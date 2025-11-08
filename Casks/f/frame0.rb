cask "frame0" do
  # NOTE: "0" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "642ff574f685d54c4a2adf020bf21b541dc4d6673a1b2826ae1b0680ada6ebec",
         intel: "03ba00a7e23d60a628254b3464a278e6f5f76988bc09a2c7fb4d92deda042de6"

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
