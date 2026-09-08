cask "qidistudio" do
  version "2.07.02.60"
  sha256 "c815493bb382d21d365a0b3648ec5a5b7e62c3f42ff11f6126937a35ee05742a"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_v0#{version}_MacOS_universal.dmg"
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
