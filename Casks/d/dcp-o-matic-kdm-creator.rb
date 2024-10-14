cask "dcp-o-matic-kdm-creator" do
  version "2.16.95"
  sha256 "fddc67d95cf5ad69159e941bb411a106730bb72269be120fa074c41f6950d183"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
