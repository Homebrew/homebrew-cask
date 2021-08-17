cask "omnioutliner" do
  if MacOS.version <= :high_sierra
    version "5.4.2"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}(n).dmg"
  else
    version "5.8.5"
    sha256 "4439e6f700e71e3ec182fd16be9eca3de3afa3db4c4894c396297ba59b0f6b10"
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
