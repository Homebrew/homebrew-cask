cask "dcp-o-matic-batch-converter" do
  version "2.14.56"
  sha256 "e380aa61ea4c7949e908c58e942bbf9903e5cb3bff1c726f364a9f1c42da4005"

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
