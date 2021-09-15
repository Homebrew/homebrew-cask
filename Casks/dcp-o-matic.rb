cask "dcp-o-matic" do
  version "2.14.54"
  sha256 "743eeae5da182add935afc82b647adcc5e765f4437ca72b1f3cdd9afcf9645a6"

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
