cask "chessx" do
  version "1.6.4"
  sha256 "cf8d57ceb7ebf400ab16a9b5fe5283dac4b3e80f4702ef5190a81f19c124d57f"

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
