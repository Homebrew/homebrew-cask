cask "pcsx2" do
  version "2.6.2"
  sha256 "7c933d634bea423aad6096f7d481986619dbf45e71c083a9a34340085ec556f3"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  livecheck do
    url "https://api.pcsx2.net/v1/stableReleases?pageSize=1"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["data"]&.map do |release|
        next unless release.dig("assets", "MacOS")

        release["version"]&.[](regex, 1)
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "PCSX2-v#{version}.app", target: "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
