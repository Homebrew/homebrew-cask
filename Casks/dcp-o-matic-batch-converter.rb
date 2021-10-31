cask "dcp-o-matic-batch-converter" do
  version "2.14.55"
  sha256 "6109bbc3e24df2bd57d16f4ef2fbdf4225bc91e107992816d80cc96f4dee203b"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major} Batch converter.app"
end
