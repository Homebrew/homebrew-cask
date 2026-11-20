cask "qidistudio" do
  version "2.07.02.73"
  sha256 "ee0e3194572ea436ba4b7821fc3b4a6b455d219667dd91b85143d5c656524637"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_v0#{version}_MacOS_universal.dmg"
  name "QIDI Studio"
  desc "Slicer software for QIDI 3D printers"
  homepage "https://us.qidi3d.com/pages/qidi-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "QIDIStudio.app"

  zap trash: [
    "~/Library/Application Support/QIDIStudio",
    "~/Library/Caches/com.qiditech.qidi-studio",
    "~/Library/Preferences/com.qiditech.qidi-studio.plist",
    "~/Library/WebKit/com.qiditech.qidi-studio",
  ]
end
