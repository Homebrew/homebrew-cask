cask 'popchar' do
  version '8.0'
  sha256 'c3c145e7c76ceabb0d19870dabfb89789d2776f318ae9abd0729dd615f25d82b'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html',
          checkpoint: 'dfac36c7a01dfc382e2d5f39a6854453c46450dc78c1d4c436d06493d7ab1dfc'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
