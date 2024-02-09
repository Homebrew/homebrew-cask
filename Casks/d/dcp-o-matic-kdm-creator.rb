cask "dcp-o-matic-kdm-creator" do
  version "2.16.75"
  sha256 "9a104917daa3f2af324b249b483d84cd91d775311f509ae0afe7174e7307ed4f"

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
