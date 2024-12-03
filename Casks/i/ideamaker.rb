cask "ideamaker" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "apple-silicon", intel: "intel"

  version "5.1.4.8480"
  sha256 arm:   "6e7e4aba8bf1ec7e663d1666cc9bff61b280b5999b718f57db880a9a93c481cb",
         intel: "5eee28f41aa87a60c63f56ccb90f882b11c7bf2fa7eff48df2999f1392665ff0"

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
