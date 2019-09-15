cask 'idagio' do
  version '0.0.98'
  sha256 'c14cbb361adfd002b174cb019b30bc7605d6d31d416ab1ab5e3c8dc8e559790d'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
