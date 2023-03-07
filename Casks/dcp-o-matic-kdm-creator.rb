cask "dcp-o-matic-kdm-creator" do
  version "2.16.46"
  sha256 "eb4deb88c426ef145dc16a4af93930cba493793f33cd2c56e84477cb2cda98eb"

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
