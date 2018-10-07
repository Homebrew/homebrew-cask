cask 'popchar' do
  version '8.4'
  sha256 'c9a39386ee171f3ed814035a93dbee9844b57c8414bd5ca7ba2990ee8a74119f'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/popcharx/history.html'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
