cask :v1 => 'amadeus-pro' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  homepage 'http://www.hairersoft.com/pro.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Amadeus Pro.app'
end
