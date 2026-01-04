cask "pcsx2" do
  version "2.6.0"
  sha256 "5dec03eac63e92290e5f3dae47f686809e078f6faffa9709ed8ac0a5db7e3939"

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
