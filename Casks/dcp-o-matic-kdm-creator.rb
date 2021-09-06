cask "dcp-o-matic-kdm-creator" do
  version "2.14.54"
  sha256 "f1be4e7f4aa1432cd30e0569c0b76692ae3764ab8217bd14ddb21def6dc4133f"

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
