cask "chessx" do
  version "1.6.2"
  sha256 "2dc237970abb6c351f166c29ed1af274a9e3f3b9596645585abaec2563ba24c3"

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg",
      verified: "downloads.sourceforge.net/chessx/"
  name "ChessX"
  desc "Chess database"
  homepage "https://chessx.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/chessx/rss?path=/chessx"
    regex(%r{url=.*?/chessx[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "chessx-installer.mpkg"

  uninstall pkgutil: "net.sourceforge.chessx"

  zap trash: [
    "~/.config/chessx",
    "~/Library/Application Support/chessx",
    "~/Library/Preferences/net.sourceforge.chessx.plist",
    "~/Library/Saved Application State/net.sourceforge.chessx.savedState",
  ]
end
