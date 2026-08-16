cask "dcp-o-matic-encode-server" do
  version "2.19.1"
  sha256 "b29891d7ec3c7f513da65f6839839aec0de6bee807bc7b3122b0f946b1b0bf7f"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Encode Server.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.server.plist"
end
