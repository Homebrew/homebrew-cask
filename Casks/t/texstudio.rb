cask "texstudio" do
  arch arm: "-m1.zip", intel: ".dmg"

  version "4.8.4"
  sha256 arm:   "f66ede26faa71dbfbb12e3d02036a826e0a8f08f437078b25aa81b53336489d0",
         intel: "43f70201a54d3622983093d99636529935a6d911a5cd99f70637c35f052ccd6e"

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
