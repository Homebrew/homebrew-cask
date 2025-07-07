cask "pcsx2@nightly" do
  version "2.5.43"
  sha256 "eaa7217930ba901e695e9c25480da2d8a444345fcca5138ba4ca9155424df5a7"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
  name "PCSX2 Nightly"
  desc "Playstation 2 Emulator (Nightly build)"
  homepage "https://pcsx2.net/"

  depends_on macos: ">= :big_sur"

  app "PCSX2-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
