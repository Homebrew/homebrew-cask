cask "dcp-o-matic-encode-server" do
  version "2.18.13"
  sha256 "9e6a23d2433bf18b9556282a922aaa01f302ffd53c41a4a797b0b562d8935a8c"

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
