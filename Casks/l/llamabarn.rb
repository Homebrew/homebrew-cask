cask "llamabarn" do
  version "0.21.0"
  sha256 "30e59d5de64654fad9b465fa8cd47b3794687c6a1d08a50924b05856d7aa7081"

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
