cask 'popchar' do
  version '8.9'
  sha256 '670f7ea6329bcd0fa760ca33042e09f7866b5f69170a658bbd0c79fd2b8da549'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/popcharx.xml'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
