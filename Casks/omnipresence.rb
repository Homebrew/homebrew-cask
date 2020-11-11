cask "omnipresence" do
  if MacOS.version <= :yosemite
    version "1.4.1,10.10"
    sha256 "409bf272e7c4dc488f68abadb3e2ef15d4accde10f8ee9babd8b23f522bfe323"
  elsif MacOS.version <= :high_sierra
    version "1.6,10.13"
    sha256 "48bcc9f4a3b49f120651cb6d8fd3f1744bf91c4c63e7d30c5d1762eaacc3cd0b"
  else
    version "1.8,10.14"
    sha256 "dfb2d162103b3c23e2225dee2322d006f72be3b99b1283c365f6fdd4d1e047d3"
  end

  url "https://downloads.omnigroup.com/software/MacOSX/#{version.after_comma}/OmniPresence-#{version.before_comma}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence"
  name "OmniPresence"
  desc "Document syncing application"
  homepage "https://www.omnigroup.com/omnipresence"

  app "OmniPresence.app"
end
