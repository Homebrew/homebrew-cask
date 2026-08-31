cask "eez-studio" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.29.0"
  sha256 arm:   "4d93276d367b183c6959284ba06cc1b909e48594c821a292d541bc662359cf46",
         intel: "a9e660b5c91fbb8a56dccd5a64062890b99e4d602cca886362558acc3e600a7f"

  url "https://github.com/eez-open/studio/releases/download/v#{version}/EEZ.Studio-#{version}-#{arch}.zip"
  name "EEZ Studio"
  desc "Visual tool for GUI development and T&M automation"
  homepage "https://www.envox.eu/studio/studio-introduction/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "EEZ Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/hr.envox.eez.studio.sfl*",
    "~/Library/Application Support/eezstudio",
    "~/Library/Preferences/hr.envox.eez.studio.plist",
  ]
end
