cask "caskhub" do
  version "0.8.3"
  sha256 "3b97fcbc52180f5af205016a80ee0e65a17dd118bf0fd3dfaf7c2cf49c70c4da"

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
