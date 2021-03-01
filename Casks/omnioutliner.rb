cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2(n)"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version "5.8.2"
    sha256 "936bf053709596ccb19ad7fe4abf388956ae5acace7cbfbbc6305f4768c73f96"
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
