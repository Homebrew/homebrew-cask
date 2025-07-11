cask "texstudio" do
  arch arm: "-m1"

  version "4.8.8"
  sha256 arm:   "d60619d3cf4ec8195c7c0c1f890879d72aacaac6149f6f4179c9fab952ca487a",
         intel: "77e13a73e001c6528e1235429fa23f3858c35ae8b276b0621e09c8503aa3eb5a"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :monterey"

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
