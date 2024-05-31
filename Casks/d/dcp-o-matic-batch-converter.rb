cask "dcp-o-matic-batch-converter" do
  version "2.16.86"
  sha256 "5df8bbce35eee71e4f6b94f6080b6be4e9b32e51837a959f1926fedaa22d9f38"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
