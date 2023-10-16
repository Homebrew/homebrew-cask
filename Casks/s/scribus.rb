cask "scribus" do
  version "1.5.8"
  sha256 "d5ebc6f104bb57457c68ce651864053040af38f218bad1eef17491db7e6282ef"

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  # The stable branch is outdated and supported on deprecated versions of MacOS.
  # Use the devel branch until the stable branch is updated
  # https://github.com/Homebrew/homebrew-cask/pull/120289
  livecheck do
    url "https://www.scribus.net/downloads/"
    regex(%r{href=.*?scribus[._-]devel/v?(\d+(?:\.\d+)+)}i)
  end

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
