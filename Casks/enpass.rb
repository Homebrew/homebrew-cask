cask :v1 => 'enpass' do
  version '5.0.2'
  sha256 '553702000415aad0e682514a4d66f2424f55d99796389c738a3ecd671efd8c60'

  url 'http://dl.sinew.in/mac/setup/Enpass-5.0.2.dmg'
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  app 'Enpass.app'
end
