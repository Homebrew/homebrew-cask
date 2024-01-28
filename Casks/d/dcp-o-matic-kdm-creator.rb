cask "dcp-o-matic-kdm-creator" do
  version "2.16.73"
  sha256 "11aa64c303cc526ca90aa7396668aa61006f3e63929b7b0683115c606f4531fd"

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
