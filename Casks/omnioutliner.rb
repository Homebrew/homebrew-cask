cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2(n)"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version "5.8.1"
    sha256 "302e27604ab9ed0c9695eb1d9135ed5145e0bef2a9bbdab973ad4e5e0ae593b7"
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
