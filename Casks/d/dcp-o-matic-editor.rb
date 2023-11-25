cask "dcp-o-matic-editor" do
  version "2.16.68"
  sha256 "51ff5e862eac09ad2fe5c0f51c9d7aef955630c9f616b68306a4302093d020cd"

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
