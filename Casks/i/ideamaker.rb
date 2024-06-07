cask "ideamaker" do
  arch arm: "-arm64"

  version "5.0.6.8380"
  sha256 arm:   "0c710231461afa239a58975a001681ad254d5a54b68356a75338273892c5e394",
         intel: "9439cf24ed1e66b05c2a96f6359f0ed1148aea7c74d3126a0259ad50023decca"

  url "https://downcdn.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
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
