cask "qidistudio" do
  version "2.07.01.57"
  sha256 "c2eb144fc61f45b27123fdd9c101772d873d9969f9162c2027b67b33c00a2aa3"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_v0#{version}_MacOS_universal.dmg",
      verified: "github.com/QIDITECH/QIDIStudio/"
  name "QIDI Studio"
  desc "Slicer software for QIDI 3D printers"
  homepage "https://us.qidi3d.com/pages/qidi-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "QIDIStudio.app"

  zap trash: "~/Library/Application Support/QIDIStudio"
end
