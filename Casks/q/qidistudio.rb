cask "qidistudio" do
  version "2.03.00.70"
  sha256 "63be0fa81c7bc71f6ae6644628e89668eb373084502cf325f8cd6a4be7f31154"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_#{version}_MacOS_universal.dmg",
      verified: "github.com/QIDITECH/QIDIStudio/"
  name "QIDI Studio"
  desc "Slicer software for QIDI 3D printers"
  homepage "https://us.qidi3d.com/pages/qidi-studio"

  livecheck do
    url "https://github.com/QIDITECH/QIDIStudio/releases"
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "QIDIStudio.app"

  zap trash: "~/Library/Application Support/QIDIStudio"
end
