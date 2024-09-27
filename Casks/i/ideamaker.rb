cask "ideamaker" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "apple-silicon", intel: "intel"

  version "5.1.2.8460"
  sha256 arm:   "e7f5f38b408a771d9291758d6b058c7e23bd6691cbbe18846675d31f0d391fe3",
         intel: "24273f368f2115492d7530f0325262f16db6cd6acd6ffd546190674c317cfe32"

  url "https://downcdn.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://www.raise3d.com/download-ideamaker-mac-#{livecheck_arch}/"
    regex(/install[._-]ideaMaker[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
