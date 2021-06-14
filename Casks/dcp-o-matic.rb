cask "dcp-o-matic" do
  version "2.14.51"
  sha256 "2ef1f03c55af8649bb719704361c99b1d98f44e8ebe2125f9d17d2668f1f3d7d"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major}.app"
end
