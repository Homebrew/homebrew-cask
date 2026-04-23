cask "dcp-o-matic-editor" do
  version "2.18.39"
  sha256 "264934c287341cc05931264ff56771bda083cf4e5727da84b11e5314e473f179"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
