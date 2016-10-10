cask 'algodoo' do
  version '2.1.0'
  sha256 'f7582c715c489861aeb210f40a8930fb172da8e3b2f04c3c2c6049892488fb5e'

  url "http://www.algodoo.com/download/Algodoo_#{version.dots_to_underscores}-MacOS.dmg"
  name 'Algodoo'
  homepage 'http://www.algodoo.com'

  app 'Algodoo.app'
end
