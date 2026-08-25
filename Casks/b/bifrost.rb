cask "bifrost" do
  arch arm: "aarch64", intel: "amd64"

  version "2.1.4"
  sha256 arm:   "b9edc029e6f9c7f8a2ec4f9ca66bcf6067fa40f7db876da7e9ceb38705ad2bb2",
         intel: "8413708a68697806aeceb138c817c4906b6b444fcdf96d42f209c5dcda956591"

  url "https://github.com/zacharee/Bifrost/releases/download/#{version}/bifrost-#{version}-mac-#{arch}.zip"
  name "Bifrost"
  desc "Samsung firmware downloader"
  homepage "https://bifrost.zwander.dev/"

  auto_updates true
  depends_on macos: :big_sur

  app "Bifrost.app"

  zap trash: [
    "~/Library/Application Support/Bifrost",
    "~/Library/HTTPStorages/tk.zwander.samsungfirmwaredownloader",
    "~/Library/HTTPStorages/tk.zwander.samsungfirmwaredownloader.binarycookies",
    "~/Library/Preferences/tk.zwander.samsungfirmwaredownloader.plist",
  ]
end
