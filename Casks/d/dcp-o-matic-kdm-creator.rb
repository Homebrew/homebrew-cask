cask "dcp-o-matic-kdm-creator" do
  version "2.18.21"
  sha256 "ebc2c221d17eef9a5048f55662c2f60abe178870b130ca1378ad7b48506fd967"

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
