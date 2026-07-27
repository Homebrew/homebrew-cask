cask "dcp-o-matic-encode-server" do
  version "2.18.45"
  sha256 "3021bf97ed28daba6c1a38650d80bc10e9c9bf17db54dac9d5301cd41a091806"

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
