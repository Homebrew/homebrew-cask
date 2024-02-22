cask "dcp-o-matic-kdm-creator" do
  version "2.16.78"
  sha256 "2a3e5c18b1c30ceeea058cb22d9babf34344c30b8d25c8a74422c229c8e07583"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
