cask "dcp-o-matic-encode-server" do
  version "2.14.55"
  sha256 "33be42855f8b8810accf2ab41163a33c00f93a8fd575f6084fc3064d82206c8d"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major} Encode Server.app"
end
