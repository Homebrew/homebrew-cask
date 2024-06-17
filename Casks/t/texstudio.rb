cask "texstudio" do
  arch arm: "-m1.zip", intel: ".dmg"

  version "4.8.1"
  sha256 arm:   "af95ac31d9edab7c0d9d100276f14b1368a233b242f0754ca2235872ed5feb0f",
         intel: "9e547180b3013624a61ea5dbc92deac64ed6573d217f6044ccdf0b442932d513"

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
