cask "qidistudio" do
  version "2.05.02.50"
  sha256 "7c9d919853b83740a7d2eeb0a61e95f51d864ae1957cbafa086a3cb5445d745e"

  url "https://github.com/QIDITECH/QIDIStudio/releases/download/v#{version}/QIDIStudio_v0#{version}_MacOS_universal.dmg",
      verified: "github.com/QIDITECH/QIDIStudio/"
  name "QIDI Studio"
  desc "Slicer software for QIDI 3D printers"
  homepage "https://us.qidi3d.com/pages/qidi-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "QIDIStudio.app"

  zap trash: "~/Library/Application Support/QIDIStudio"
end
