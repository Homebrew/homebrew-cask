cask :v1 => 'gimp-lisanet' do
  version '2.8.14p1'
  sha256 '2a755c08e50290b494c26c416b6dda6ad4151610f752216d0db126d479ed787e'

  url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  homepage 'http://gimp.lisanet.de'
  license :oss

  app 'Gimp.app'
end
