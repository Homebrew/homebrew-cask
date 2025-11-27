cask "qidistudio" do
  version "2.03.01.70"
  sha256 "10eb778d20fbe4ebfe1a8c44236d34b2cfa009d29a5e06f84277105684dc77d4"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_#{version}_MacOS_universal.dmg",
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
