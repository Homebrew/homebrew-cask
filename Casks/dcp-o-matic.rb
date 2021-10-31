cask "dcp-o-matic" do
  version "2.14.55"
  sha256 "525b6dd29d6ed6a95bbb26a01bd5c655e80d0ae8c29472e64bd312fae7e432f2"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"
end
