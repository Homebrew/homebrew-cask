cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.18"
  sha256 arm:   "155a72d697482ba2763be36a48840c792464627c1f031a4123f46d706f89d5aa",
         intel: "77207f56cb1fe2ec8cad10a8117c281611cabc3d5f8d57f6d3109c1b14297245"

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
