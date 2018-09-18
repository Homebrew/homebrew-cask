cask 'huggle' do
  version '3.4.4'
  sha256 '82cce22303dbbf28d4e94ec271a2c87e845b0630219d6ec52966ccc0a1697d87'

  # github.com/huggle/huggle3-qt-lx was verified as official when first introduced to the cask
  url "https://github.com/huggle/huggle3-qt-lx/releases/download/#{version}/huggle_#{version}.dmg"
  appcast 'https://github.com/huggle/huggle3-qt-lx/releases.atom'
  name 'Huggle'
  homepage 'https://en.wikipedia.org/wiki/Wikipedia:Huggle'

  app 'Huggle.app'
end
