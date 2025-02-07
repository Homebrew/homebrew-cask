cask "texstudio" do
  arch arm: "-m1", intel: ""

  version "4.8.6"
  sha256 arm:   "3ba37f5bbf1232af5bdefbca7b859639c09b180aba26b2801119708f402b5c4a",
         intel: "7d4326f2e4a59cc7022d950f1c7f01ce1978bc69c66a7199b4c73ac2cca37b37"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :big_sur"
  end

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
