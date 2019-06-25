cask 'idagio' do
  version '0.0.89'
  sha256 '40c155910518f15bfa24218103ce8309448940c6af7a7a1df135e80d2ff7a59b'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
