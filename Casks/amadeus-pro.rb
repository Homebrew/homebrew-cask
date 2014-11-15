cask :v1 => 'amadeus-pro' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  homepage 'http://www.hairersoft.com/pro.html'
  license :unknown

  app 'Amadeus Pro.app'
end
