cask "openmw" do
  arch arm: "arm64", intel: "amd64"

  version "0.50.0"
  sha256 arm:   "f1787384b54ae6b76444ca0899c553c491800d28185e7ee8bf052a30656160ed",
         intel: "8ba6c83933d999f5f1f6f9d1bb35b948c1d01972fc35e6bfe2c302735ca2db8e"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}-macos-#{arch}.dmg",
      verified: "github.com/OpenMW/openmw/"
  name "OpenMW"
  desc "Open-source open-world RPG game engine that supports playing Morrowind"
  homepage "https://openmw.org/"

  livecheck do
    url :url
    regex(/openmw[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "OpenMW.app"
  app "OpenMW-CS.app"

  zap trash: [
    "~/Library/Application Support/openmw",
    "~/Library/Preferences/openmw",
    "~/Library/Preferences/org.openmw.openmw.plist",
    "~/Library/Saved Application State/org.openmw.*.savedState",
  ]
end
