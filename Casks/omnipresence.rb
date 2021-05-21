cask "omnipresence" do
  if MacOS.version <= :yosemite
    version "1.4.1"
    sha256 "409bf272e7c4dc488f68abadb3e2ef15d4accde10f8ee9babd8b23f522bfe323"

    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniPresence-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "1.6"
    sha256 "48bcc9f4a3b49f120651cb6d8fd3f1744bf91c4c63e7d30c5d1762eaacc3cd0b"

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPresence-#{version}.dmg"
  else
    version "1.8"
    sha256 "dfb2d162103b3c23e2225dee2322d006f72be3b99b1283c365f6fdd4d1e047d3"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPresence-#{version}.dmg"
  end

  name "OmniPresence"
  desc "Document syncing application"
  homepage "https://www.omnigroup.com/omnipresence"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence"
    strategy :sparkle
  end

  app "OmniPresence.app"
end
