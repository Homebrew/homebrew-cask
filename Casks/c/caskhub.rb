cask "caskhub" do
  version "0.9.1"
  sha256 "b686dac42b554f92975f23db68095de29681aac9dd58ebb6bd6d4ff1fbee83a2"

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
