cask "frame0" do
  # NOTE: "0" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "c465929a9581e11dd0fc440298719bf39dea680e881b6ca76bb53e43c64bdc1f",
         intel: "dcec01403b7910941286cc6be4813ad3b19a4b7dbdba7752e80ef8c1db031797"

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
