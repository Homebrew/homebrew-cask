cask :v1 => 'origin' do
  version :latest
  sha256 :no_check

  # akamaihd.net is the official download host per the vendor homepage
  url 'https://eaassets-a.akamaihd.net/Origin-Client-Download/origin/mac/Origin.dmg'
  name 'Origin'
  homepage 'http://origin.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Origin.app'
end
