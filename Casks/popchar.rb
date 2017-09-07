cask 'popchar' do
  version '8.1'
  sha256 '6fa7f2de944baa44c778ccc62be48ff0183e2b468fa0034cde455623a0d7860c'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html',
          checkpoint: '0aa80cebf90408f4a58b602bad14d53108b2d485a47b1f3893141c5136bcbd02'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
