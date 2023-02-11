cask "dcp-o-matic-kdm-creator" do
  version "2.16.42"
  sha256 "533b7a862f4854e5f9591c54d5c810dd64a827d8b8d09cefed2b1c20faa0b219"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
