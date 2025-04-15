cask "dcp-o-matic-encode-server" do
  version "2.18.17"
  sha256 "8106f99008ede6d7b4f21b6f0a23daee0354ed7d4364ebcfa462c1c3a682cba6"

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
