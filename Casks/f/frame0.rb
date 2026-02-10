cask "frame0" do
  # NOTE: "0" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "51d719427dd71b77c514af119f2e9eb9c949927a76b4f9186c5ad3cbaa809288",
         intel: "0594e52a7464bd70e04f8cf6dd65ca831951e3b97f9e52f79e29de07c28f5c7e"

  url "https://files.frame0.app/releases/darwin/#{arch}/Frame0-#{version}-#{arch}.dmg"
  name "Frame0"
  desc "Wireframing tool"
  homepage "https://frame0.app/"

  livecheck do
    url "https://files.frame0.app/releases/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release["version"]
      end
    end
  end

  app "Frame0.app"

  uninstall quit: "com.electron.frame0"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.frame0.sfl*",
    "~/Library/Application Support/Frame0",
    "~/Library/Caches/com.electron.frame0*",
    "~/Library/HTTPStorages/com.electron.frame0",
    "~/Library/Preferences/com.electron.frame0.plist",
  ]
end
