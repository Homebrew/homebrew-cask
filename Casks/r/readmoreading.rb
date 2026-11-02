cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.13.2"
  sha256 arm:   "9339f4d261113adc5e6a2320bf5e3104f3ce096a45e30ccd070feedf0eb08f7c",
         intel: "9ca24e58c91dc58bfd497fadcd3bf5772273157e151835db6014b08c79aec608"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/", browsed: "2026-09-25"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.readmoo.sfl*",
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Caches/com.electron.readmoo",
    "~/Library/Caches/com.electron.readmoo.ShipIt",
    "~/Library/HTTPStorages/com.electron.readmoo",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.electron.readmoo.plist",
    "~/Library/Saved Application State/com.electron.readmoo.savedState",
  ]
end
