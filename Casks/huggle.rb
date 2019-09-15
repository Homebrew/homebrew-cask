cask 'huggle' do
  version '3.4.9'
  sha256 'b89389fedc9f8f5e95d65235af2564277224955e7a1d0d6f63b7705f66e7109f'

  # github.com/huggle/huggle3-qt-lx was verified as official when first introduced to the cask
  url "https://github.com/huggle/huggle3-qt-lx/releases/download/#{version}/huggle_#{version}.dmg"
  appcast 'https://github.com/huggle/huggle3-qt-lx/releases.atom'
  name 'Huggle'
  homepage 'https://en.wikipedia.org/wiki/Wikipedia:Huggle'

  app 'Huggle.app'
end
