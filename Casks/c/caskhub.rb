cask "caskhub" do
  version "0.10.1"
  sha256 "afd5ffa5ed4b7071c1469ea612ec9239fb2def28ceae59be4d8e7b900c80a8df"

  url "https://github.com/alielsokary/CaskHub/releases/download/#{version}/CaskHub-#{version}.zip"
  name "CaskHub"
  desc "Native GUI for Homebrew casks"
  homepage "https://caskhub.app/"

  auto_updates true
  depends_on macos: :sequoia

  app "CaskHub.app"

  uninstall quit: "com.mag.caskhub"

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
