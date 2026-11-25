cask "synology-image-assistant" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3-76"
  sha256 arm:   "38d0f92c2c4b564c9e469fea8345cd651a7cfdd5468794f1de8dbb163209a01f",
         intel: "704ef5289c54a6e6dea5287aade999bae553cf05dec70fbfec16c7452c14bed3"

  url "https://global.download.synology.com/download/Utility/SynologyImageAssistant/#{version}/Mac/SynologyImageAssistant-#{version}-#{arch}.pkg"
  name "Synology Image Assistant"
  desc "Assistant to generate image previews of formats like HEIC and HEVC"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://utyupdate.synology.com/electron/SynologyImageAssistant/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  pkg "SynologyImageAssistant-#{version}-#{arch}.pkg"

  uninstall launchctl: "com.synology.Photos",
            quit:      "com.synology.Photos",
            pkgutil:   "com.synology.Photos",
            delete:    "/Applications/Synology Image Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/Synology/SynologyImageAssistantStartup.*",
    "~/Library/Application Scripts/Synology/SynologyImageAssistantUninstaller.*",
    "~/Library/Application Support/Synology Image Assistant",
    "~/Library/Logs/Synology Image Assistant",
    "~/Library/Preferences/com.synology.Photos.plist",
  ]
end
