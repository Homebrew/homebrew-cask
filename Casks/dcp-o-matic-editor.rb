cask "dcp-o-matic-editor" do
  version "2.16.29"
  sha256 "420f83ef266702f0fdbb16029999dc215633fc7efb9f2583b775da62cc1d95b4"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
