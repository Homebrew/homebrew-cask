cask :v1 => 'lisanet-gimp' do
  version '2.8.14p1'
  sha256 '2a755c08e50290b494c26c416b6dda6ad4151610f752216d0db126d479ed787e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  name 'GIMP'
  homepage 'http://gimp.lisanet.de'
  license :gpl

  app 'Gimp.app'
end
