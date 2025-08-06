cask "synology-image-assistant" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2-56"
  sha256 arm:   "2f4379724aad0ba09c5af2520c1f4a9dbb6732df31c55b11a25721ff2472a673",
         intel: "12d296d740412affac661ddb3e081ccb91977a4e4f5b0339ee8db68b6f6613e8"

  url "https://global.download.synology.com/download/Utility/SynologyImageAssistant/#{version}/Mac/SynologyImageAssistant-#{version}-#{arch}.pkg"
  name "Synology Image Assistant"
  desc "Assistant to generate image previews of formats like HEIC and HEVC"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://utyupdate.synology.com/electron/SynologyImageAssistant/latest-mac.yml"
    strategy :electron_builder
  end

  pkg "SynologyImageAssistant-#{version}-#{arch}.pkg"

  uninstall launchctl: "com.synology.Photos",
            quit:      "com.synology.Photos",
            pkgutil:   "com.synology.Photos",
            delete:    "/Applications/Synology Image Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/Synology/SynologyImageAssistantStartup.*",
    "~/Library/Application Scripts/Synology/SynologyImageAssistantUninstaller.*",
    "~/Library/Application Support/Synology Image Assistant",
  ]
end
