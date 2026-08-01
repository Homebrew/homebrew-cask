cask "dcp-o-matic-encode-server" do
  version "2.18.46"
  sha256 "89d5cdb3729608cdb165c409cb4bf285077bda9f4a98a6a9da83cb35dcdbcfd9"

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
