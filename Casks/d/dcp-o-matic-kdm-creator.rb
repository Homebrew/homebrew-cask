cask "dcp-o-matic-kdm-creator" do
  version "2.16.87"
  sha256 "6adc0e15b63f9bcc1eef440c34824015e4841e634678b6e065b3f891e7ac809e"

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
