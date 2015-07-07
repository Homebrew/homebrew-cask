cask :v1 => 'amadeus-pro' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  name 'Amadeus Pro'
  homepage 'http://www.hairersoft.com/pro.html'
  license :commercial

  app 'Amadeus Pro.app'
end
