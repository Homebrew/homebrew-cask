cask "ideamaker" do
  arch arm: "-arm64"

  version "4.3.3.6560"
  sha256 arm:   "31486067e67d564bf464c2bf35795caef3eef2d42e043017eab35c5e4328dde0",
         intel: "8d39a317e647c541293b2a27ed7752833727a79d2dcdd841df5e072bab6679b0"

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
