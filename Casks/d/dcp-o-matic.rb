cask "dcp-o-matic" do
  version "2.18.3"
  sha256 "18a3426fd14ea61f54da9854e5fe1a3778bab8f8443dc89816484f64bffab0cd"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
