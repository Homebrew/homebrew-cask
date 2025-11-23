cask "texstudio" do
  arch arm: "-m1"

  version "4.9.0"
  sha256 arm:   "4a28f080b4b725ef4f4c41cce8e49ee81793d24ffe6a82ba82f20625cc5969d6",
         intel: "09713189f5247f56fe745f0329b7574b3bc9c3aedb450f27ffd43e25ccc4337b"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
