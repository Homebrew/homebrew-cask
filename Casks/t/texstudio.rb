cask "texstudio" do
  arch arm: "-m1.zip", intel: ".dmg"

  version "4.8.2"
  sha256 arm:   "87d2ed04324825bb5b89d33043f80ca28fbf818d93415d08ce2a48199133812e",
         intel: "30413d952411cd42a68e8766901908dab61f5f4215d6c441b6d57305de6d5ee5"

  on_arm do
    depends_on macos: ">= :sonoma"

    app "texstudio-#{version}-osx-m1.app"
  end
  on_intel do
    depends_on macos: ">= :big_sur"

    app "texstudio.app"
  end

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
