cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2(n)"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version "5.7.1"
    sha256 "e1aa55ee71b9fa6236ce61b26e6cabb4fb015ae2be0a74d76498552347e98e66"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name "OmniOutliner"
  desc "Note taking applciation and information organizer"
  homepage "https://www.omnigroup.com/omnioutliner/"

  app "OmniOutliner.app"
end
