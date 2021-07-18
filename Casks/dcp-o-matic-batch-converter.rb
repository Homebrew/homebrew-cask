cask "dcp-o-matic-batch-converter" do
  version "2.14.54"
  sha256 "a447ca91ce1de85f161eb33666f7699f31be5ad9bace6db1df8f7afa0dbd16b3"

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
