cask "hugin" do
  version "2019.2.0"
  sha256 "00caa732134c3b4dedd04f3605a4a1660e6baa49f54b6bb45eb25387dbe1e419"

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg",
      verified: "downloads.sourceforge.net/hugin/"
  name "Hugin"
  desc "Panorama photo stitcher"
  homepage "https://hugin.sourceforge.io/"

  deprecate! date: "2024-11-10", because: :unmaintained

  suite "Hugin"

  zap trash: [
        "~/Library/Preferences/hugin Preferences",
        "~/Library/Preferences/net.sourceforge.Hugin.plist",
        "~/Library/Preferences/net.sourceforge.hugin.PTBatcherGUI.plist",
        "~/Library/Preferences/net.sourceforge.HuginStitchProject.plist",
      ],
      rmdir: "~/.hugindata"
end
