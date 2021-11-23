cask "dcp-o-matic-encode-server" do
  version "2.14.56"
  sha256 "fdda8cd48551a50d8402ad354dd365becc2521ffad27233aedd3dbb322c7a909"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major} Encode Server.app"
end
