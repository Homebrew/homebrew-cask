cask "frame0" do
  # NOTE: "0" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "45ad29dbe1eaa5d57cc0ebd97f70917889a1b06151527afbf5c4912cfe662add",
         intel: "bda5d78133c7b9da7e8737887e5931e1ed056e5662f769a8d396c158ea2680d5"

  on_arm do
    version "1.1.1"
  end
  on_intel do
    version "1.1.0"
  end

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
