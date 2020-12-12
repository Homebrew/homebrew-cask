cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2(n)"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version "5.8"
    sha256 "16e22db80ef4c6d4cfef1002df93a2ebc6adaa11347f6bf7a11ca27b4b8bf979"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end

  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.omnigroup.com/download/latest/omnioutliner/"
  name "OmniOutliner"
  desc "Note taking applciation and information organizer"
  homepage "https://www.omnigroup.com/omnioutliner/"

  app "OmniOutliner.app"
end
