cask :v1 => 'origin' do
  version :latest
  sha256 :no_check

  # akamaihd.net is the official download host per the vendor homepage
  url 'https://eaassets-a.akamaihd.net/Origin-Client-Download/origin/mac/Origin.dmg'
  name 'Origin'
  homepage 'http://origin.com'
  license :gratis

  app 'Origin.app'
end
