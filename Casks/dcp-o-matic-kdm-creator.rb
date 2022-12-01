cask "dcp-o-matic-kdm-creator" do
  version "2.16.35"
  sha256 "9c8250e394d51869ad11ee8b41723b83f9df75b727fd2522ad80dba4d85f806b"

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
