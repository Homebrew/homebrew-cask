cask 'otter-browser' do
  version '0.9.97-rc7'
  sha256 '71af2a3de43bffc059030f50a9f90d882df10713d0e8bed0e54be1a5f6f378c8'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://sourceforge.net/projects/otter-browser/rss',
          checkpoint: '88fce898da990c99de75b194fb39fd57e22c80666cfc7d8bf1d47ac95e172a5d'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
