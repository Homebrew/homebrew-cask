cask "texstudio" do
  arch arm: "-m1"

  version "4.9.7"
  sha256 arm:   "5ac66e53c7cfab83621e50db3287edc7f977b2e5259806949a3915090f1898b1",
         intel: "13ef12b15c44d3cd44b58a24a5ba8ef1b5dd1304d7b67e2a0e8ba3ec0868db07"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "texstudio-#{version}-osx#{arch}.app"

  uninstall quit: "texstudio"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
