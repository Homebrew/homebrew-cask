cask "fastrawviewer" do
  version "2.0.10.2058"
  sha256 "5784f817a4ef56084871674b86b8a1a506606fdace3bd31dbb9d554b85c0f1fb"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    regex(/FastRawViewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "FastRawViewer.app"

  zap trash: "~/Library/Preferences/com.libraw-llc.FastRawViewer.plist"
end
