cask "dcp-o-matic-encode-server" do
  version "2.19.0"
  sha256 "14ab03755d5f754283528c9e1b6f32dd44bfb47c0459d0d291af9572a72b7f15"

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
