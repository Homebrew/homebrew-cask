class Owncloud < Cask
  version '1.6.2.551'
  sha256 'c90b75be7c2645e6e8f26d31403bb7cdb76729e94c0b0a2d3c277d9c5181af17'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.dmg"
  homepage 'http://owncloud.com'

  link 'owncloud.app'
end
