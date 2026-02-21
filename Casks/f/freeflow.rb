cask "freeflow" do
  version "build-20260216-222823-1bbe009"
  sha256 "88f6df9f3443629796eeac2cc5fd901c28ba665738c12a0dab15587c7d56f518"

  url "https://github.com/zachlatta/freeflow/releases/download/#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Context-aware voice-to-text transcription"
  homepage "https://github.com/zachlatta/freeflow"

  livecheck do
    url "https://github.com/zachlatta/freeflow/releases/latest"
    strategy :github_latest
    regex(/^(build-\d{8}-\d{6}-[0-9a-f]+)$/i)
  end

  depends_on macos: ">= :ventura"

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Application Support/FreeFlow",
    "~/Library/Preferences/com.zachlatta.freeflow.plist",
  ]
end
