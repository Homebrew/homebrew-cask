cask "dcp-o-matic-encode-server" do
  version "2.18.42"
  sha256 "8ac765f10895bf2f2f028a433410fc266ef65e7582974d9710f1a19efc9909ea"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
