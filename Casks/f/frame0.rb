cask "frame0" do
  # NOTE: "0" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "b370f1952488e4b27da992d7e87c1dcd1ddfd721126cb1ef82d906571dd4ede9",
         intel: "88f814a71877574da3e6221b80422efde9c4da01a7397a9eca114c747578952e"

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
