cask "ideamaker" do
  arch arm: "-arm64"

  version "5.0.6.8380"
  sha256 arm:   "11d2f2a8af237e047cdd1c28875dc59f5643d41d8314dda27d34185fe6a8eb7a",
         intel: "06e9d37f1a2b7d24da7652bd21f41170c44ba73ce73e79d724aa5b85acc5d9cb"

  url "https://downcdn.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://www.raise3d.com/download/"
    regex(%r{href=.*?/install[._-]ideaMaker[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
