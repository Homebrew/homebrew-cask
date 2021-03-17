cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2(n)"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version "5.8.3"
    sha256 "e6b889949b2b1c1355b1c83b5c63e56ad3f27efdb10ff9228e37f40755df0865"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end

  name "OmniOutliner"
  desc "Note taking applciation and information organizer"
  homepage "https://www.omnigroup.com/omnioutliner/"

  livecheck do
    url "https://www.omnigroup.com/download/latest/omnioutliner/"
    strategy :header_match
  end

  app "OmniOutliner.app"
end
