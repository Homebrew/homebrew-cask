cask "ideamaker" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "apple-silicon", intel: "intel"

  version "5.1.3.8475"
  sha256 arm:   "f1bbc87771b2c0186b40f640b5142fb1f42f67e713a94b649ea7ad7c75f2cd99",
         intel: "d4e244264105409af46fd11d9a9a69ffa440f5381fa3c93b658ac25231fd8cc0"

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
