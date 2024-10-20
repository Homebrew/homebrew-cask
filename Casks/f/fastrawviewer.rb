cask "fastrawviewer" do
  version "2.0.9.2037"
  sha256 "40e1d860c9a395d5e80a0316e7d86932d18024471e0bc98e273367985924b7f5"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    regex(/FastRawViewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "FastRawViewer.app"

  zap trash: "~/Library/Preferences/com.libraw-llc.FastRawViewer.plist"
end
