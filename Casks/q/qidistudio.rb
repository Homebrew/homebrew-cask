cask "qidistudio" do
  version "2.07.02.10"
  sha256 "5b98734ec3b349d55d5f4c807a7f34c3a0b6f1456b3658f1f3ae9c32f126d3d2"

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
