cask "caskhub" do
  version "0.8.1"
  sha256 "1b518d030ba7dd05db71f922b338f9ca94ef3758d2db53aad71abab249ea9dc7"

  url "https://github.com/alielsokary/CaskHub/releases/download/#{version}/CaskHub-#{version}.zip"
  name "CaskHub"
  desc "Native GUI for Homebrew casks"
  homepage "https://caskhub.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CaskHub.app"

  zap trash: [
    "~/Library/Application Support/CaskHub",
    "~/Library/Application Support/com.mag.caskhub",
    "~/Library/Caches/CaskHub",
    "~/Library/Caches/com.mag.caskhub",
    "~/Library/Caches/SentryCrash/CaskHub",
    "~/Library/HTTPStorages/com.mag.caskhub",
    "~/Library/HTTPStorages/com.mag.caskhub.binarycookies",
    "~/Library/Preferences/com.mag.caskhub.plist",
  ]
end
