cask "dcp-o-matic-kdm-creator" do
  version "2.14.55"
  sha256 "2d4983d2dd755ebaffe987aed5aaece3f358af3827f43b2f98df960c881395ce"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
