cask 'brave' do
  version '0.7.10dev'
  sha256 '92d21d5223369424baff859b5a38bb72d8b5a7c0b9b4ecf7242455047da64d5a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '8daf6593e19465b868b0bc708d9536bf48cc1d1a3c77469f24971d9c482f4708'
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
