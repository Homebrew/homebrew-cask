cask "dcp-o-matic-editor" do
  version "2.18.45"
  sha256 "139003482e7b69b2ceedbd3d2666fc7b70fdae19b0ef3068b85c7a67bd49b193"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Editor.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.editor.plist"
end
