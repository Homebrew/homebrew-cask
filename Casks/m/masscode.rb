cask "masscode" do
  arch arm: "-arm64"

  version "6.2.1"
  sha256 arm:   "a8f2584adac3dcad446bfb1fc1fbde2b9b39dae388fb066776e09f6ba30063cd",
         intel: "477df2c318da001052c2c33d83df101e6aa2369f754c6a8ce641dd2d048a0442"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg"
  name "massCode"
  desc "Developer workspace for code snippets, notes and HTTP requests"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "massCode.app"

  zap trash: [
        "~/.massCode",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.masscode.app.sfl*",
        "~/Library/Application Support/masscode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
