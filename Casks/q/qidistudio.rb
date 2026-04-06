cask "qidistudio" do
  version "2.05.01.52"
  sha256 "c89a503bf134582aef04e86ba007f0a426232120ed0256cfe391ab3cc0ec0236"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_v0#{version}_MacOS_universal.dmg",
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
