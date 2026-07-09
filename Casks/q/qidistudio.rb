cask "qidistudio" do
  version "2.07.02.01"
  sha256 "62841b59fa97f2b9c1610274bc677fbc449a4a223110bbc9dbfbf333ce93bb70"

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
