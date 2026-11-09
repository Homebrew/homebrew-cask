cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "60fc40cea7b90bc08047ca28210ae5506ed5c2c9b1e24eabfdda1de05ab2c3c1",
         intel: "74ca467f361ab5761024ee46c9ba345e6b83adc9c753325f2e49eedb68244500"

  url "https://download.qoder.com/qoder-app/releases/#{version}/Qoder-mac-#{arch}.zip"
  name "Qoder"
  desc "Agentic coding platform"
  homepage "https://qoder.com/"

  livecheck do
    url "https://download.qoder.com/qoder-app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Qoder.app"

  uninstall quit: "com.qoder.app"

  zap trash: [
    "~/.qoder",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qoder.app.sfl*",
    "~/Library/Application Support/com.qoder.app.stable",
    "~/Library/Preferences/com.qoder.app.plist",
  ]
end
