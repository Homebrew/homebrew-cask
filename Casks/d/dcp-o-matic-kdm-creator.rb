cask "dcp-o-matic-kdm-creator" do
  version "2.18.44"
  sha256 "f981083e069c68aa5127a61ae4fc2fb22fbffe5dcb381b9da5b522ea2f81edab"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
