cask "ideamaker" do
  arch arm: "-arm64"

  version "4.3.2.6470"
  sha256 arm:   "2d2646b5b268dc5b5f1e48811e315c96d1444b278334710a0df73ccdded7c3a5",
         intel: "1b38d2b3899c6c5bd09fcdab1f1db382f7fa28b0cc884374d7d06b6298a5fc23"

  url "https://download.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://www.raise3d.com/download/"
    regex(%r{href=.*?/install[._-]ideaMaker[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
