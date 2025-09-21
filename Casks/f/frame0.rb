# NOTE: "0" is not a version number, but an intrinsic part of the product name
cask "frame0" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "e5bd1f4efecd81152a0c6e00df74a9a6593c16af352c5a46089779e19d892a34",
         intel: "bda5d78133c7b9da7e8737887e5931e1ed056e5662f769a8d396c158ea2680d5"

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
