cask "llamabarn" do
  version "0.26.0"
  sha256 "767207faf82cede35f4fcba8b4978d4fabe6483e79ffd9b81d17d1382642d606"

  url "https://github.com/ggml-org/LlamaBarn/releases/download/#{version}/LlamaBarn.dmg"
  name "LlamaBarn"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/LlamaBarn"

  livecheck do
    url "https://releases.llamabarn.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "LlamaBarn.app"

  uninstall quit: "app.llamabarn.LlamaBarn"

  zap trash: [
    "~/Library/Application Support/LlamaBarn",
    "~/Library/Caches/app.llamabarn.LlamaBarn",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn.binarycookies",
    "~/Library/Preferences/app.llamabarn.LlamaBarn.plist",
    "~/Library/WebKit/app.llamabarn.LlamaBarn",
  ]
end
