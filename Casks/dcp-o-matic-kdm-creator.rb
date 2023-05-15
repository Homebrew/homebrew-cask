cask "dcp-o-matic-kdm-creator" do
  version "2.16.56"
  sha256 "1e41228a5fa2e8a12f60a56806e26d07fd76978705b8bc0ad0274b4ce8344d03"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
