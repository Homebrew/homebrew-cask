cask "dcp-o-matic-encode-server" do
  version "2.16.79"
  sha256 "c843acfddc74c326d2331082e9c8eac1ed7cb1933af4c23b0b93a6a6b9777ce3"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
