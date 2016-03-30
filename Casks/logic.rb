cask 'logic' do
  version '1.1.34'
  sha256 'a30535480c38d88c023d5fe83dc53f8e97aa20f3b98fc5c6ecf08bf2ffc50eaf'

  url "http://downloads.saleae.com/betas/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'
  license :commercial

  app 'Logic.app'
end
