cask "dcp-o-matic-encode-server" do
  version "2.14.54"
  sha256 "0bc9f3c5b035ac7bd52994d20f6fbf5d6a461f5efec886fe7ac5e2e06a2feb27"

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
