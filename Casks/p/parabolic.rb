cask "parabolic" do
  arch arm: "arm64", intel: "x64"

  version "2026.5.0"
  sha256 arm:   "e1593ac65059f7f99621cd4bf570cbaec6b8b35eab16e6f0f2ab0e84d048733d",
         intel: "3458751243e105bca74adff4411784cdecde653b35624ce902b1a0e44057beb9"

  url "https://github.com/NickvisionApps/Parabolic/releases/download/#{version}/Parabolic-macOS-#{arch}.zip"
  name "Parabolic"
  desc "Download web video and audio from many sites"
  homepage "https://github.com/NickvisionApps/Parabolic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Parabolic.app"

  zap trash: [
    "~/Library/Caches/org.nickvision.tubeconverter",
    "~/Library/HTTPStorages/org.nickvision.tubeconverter",
    "~/Library/Preferences/org.nickvision.tubeconverter.plist",
    "~/Library/Saved Application State/org.nickvision.tubeconverter.savedState",
  ]
end
