cask "llamabarn" do
  version "0.29.0"
  sha256 "31c6b0a358869e18237a40f6589675f791c152f83912d2b2e6233ca7884a0e18"

  url "https://github.com/ggml-org/LlamaBarn/releases/download/#{version}/LlamaBarn.dmg"
  name "LlamaBarn"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/LlamaBarn"

  livecheck do
    url "https://releases.llamabarn.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
