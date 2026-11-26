cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.20"
  sha256 arm:   "5f9fb1e3a9051ebecd6aeab28d164b6fa5e130ab72bba0e4fcc7ee58268bd02d",
         intel: "e8ce77b25d5abfa4e361f97f99a8dfd04aadbe82dafb5cb82c43a01870ce8936"

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
