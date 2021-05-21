cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}(n).dmg"
  else
    version "5.8.4"
    sha256 "1cc35ea7c1d05290777d2aef28b18ee94ece05bf7bcc4b17a965bba1c60b1bdc"
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
