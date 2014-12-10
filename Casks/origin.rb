cask :v1 => 'origin' do
  version :latest
  sha256 :no_check

  url 'https://eaassets-a.akamaihd.net/Origin-Client-Download/origin/mac/Origin.dmg'
  homepage 'http://origin.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Origin.app'
end
