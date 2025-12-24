cask "qidistudio" do
  version "2.04.00.70"
  sha256 "b6f4399e9dd5c65ca9625b4d5161bd2c38084336dd907c14cded39f81a6be9ff"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_0#{version}_MacOS_universal.dmg",
      verified: "github.com/QIDITECH/QIDIStudio/"
  name "QIDI Studio"
  desc "Slicer software for QIDI 3D printers"
  homepage "https://us.qidi3d.com/pages/qidi-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "QIDIStudio.app"

  zap trash: "~/Library/Application Support/QIDIStudio"
end
