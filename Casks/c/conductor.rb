cask "conductor" do
  version "0.0.18"
  sha256 :no_check

  url "https://cdn.crabnebula.app/download/melty/conductor/latest/platform/dmg-aarch64",
      verified: "cdn.crabnebula.app/download/melty/conductor/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url :url
    regex(/Conductor[._-](\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: ">= :high_sierra"

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
