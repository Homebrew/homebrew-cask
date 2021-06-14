cask "dcp-o-matic-kdm-creator" do
  version "2.14.51"
  sha256 "5e93646ea8be33dfdf22a86dbc370436b209ed7f363724b74e15148ce1a79b48"

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
