cask "texstudio" do
  arch arm: "-m1.zip", intel: ".dmg"

  version "4.8.3"
  sha256 arm:   "08a949bf665627724b1d2414eca84646d2da65b01403624041f394f8a2fa8ceb",
         intel: "6f4cf7061ca22d662866b5f8bad8d8d405b9022d055b364b99065a2891791e6f"

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
