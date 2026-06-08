cask "qidistudio" do
  version "2.06.00.51"
  sha256 "1c62d8981ca93a8b1510d57fd174bd00a2fae3acac44bbc08f6fae5722d4dff1"

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
