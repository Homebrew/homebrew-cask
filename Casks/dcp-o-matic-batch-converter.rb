cask "dcp-o-matic-batch-converter" do
  version "2.14.51"
  sha256 "62c4f131986a0be0875b7bdd0bec187b34bd7139e03f44bb634189045d292435"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major} Batch converter.app"
end
