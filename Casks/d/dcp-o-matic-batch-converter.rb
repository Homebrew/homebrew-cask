cask "dcp-o-matic-batch-converter" do
  version "2.18.40"
  sha256 "7041730f864e1cd8b276f93ab26a5c8de4d98685bc53050262c7f9f11bae5281"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
