cask "dcp-o-matic-editor" do
  version "2.18.1"
  sha256 "94209a226cfb3725baea112e03fe1a5e6c22f42165fb45412e936a1fcd162aa3"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
