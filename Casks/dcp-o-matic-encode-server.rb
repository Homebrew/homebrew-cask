cask "dcp-o-matic-encode-server" do
  version "2.14.51"
  sha256 "7b763121164bf89a15083b197cfdff7e0b86202fa8db6962cf5c7059c4943967"

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
