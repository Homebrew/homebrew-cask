cask "pcsx2" do
  version "2.8.2"
  sha256 "3ed9eb40a33eae67134142c24255a079be444f0616ca29575a04a37981f7d426"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz"
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

  depends_on macos: :big_sur

  app "PCSX2-v#{version}.app", target: "PCSX2.app"

  uninstall quit: "net.pcsx2.pcsx2"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
