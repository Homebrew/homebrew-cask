cask "omnipresence" do
  if MacOS.version <= :el_capitan
    version "1.5.2"
    sha256 "82d3c6978e644dc7defafd3706a02d15c500e8254ca22076a5095bdd94b786d1"
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniPresence-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "1.6"
    sha256 "48bcc9f4a3b49f120651cb6d8fd3f1744bf91c4c63e7d30c5d1762eaacc3cd0b"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPresence-#{version}.dmg"
  elsif MacOS.version <= :catalina
    version "1.9.1"
    sha256 "dfb2d162103b3c23e2225dee2322d006f72be3b99b1283c365f6fdd4d1e047d3"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPresence-#{version}.dmg"
  else
    version "1.9.1"
    sha256 "b20077353ee8815e74770c20c331bb3a23fe8cbd2aa6ef449142fe19a0976002"
    url "https://downloads.omnigroup.com/software/macOS/11/OmniPresence-#{version}.dmg"
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
