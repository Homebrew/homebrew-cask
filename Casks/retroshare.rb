cask 'retroshare' do
  version '0.6.0,20160206-7ded128b'
  sha256 '132f7bbe3f1be47a0f544a4829f3f2bff4dbe0281cddaeb01af0db7ecbd6fc77'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.before_comma}/Retroshare-#{version.before_comma}-OSX-#{version.after_comma}.dmg"
  appcast 'https://github.com/RetroShare/RetroShare/releases.atom',
          checkpoint: '5096dde24860ff369e466ff1818b643a8ded3ca5923165d2ea395d9c925b1b5d'
  name 'RetroShare'
  homepage 'http://retroshare.sourceforge.net/'
  license :gpl

  app 'Retroshare.app'
end
