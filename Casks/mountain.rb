cask :v1 => 'mountain' do
  version :latest
  sha256 :no_check

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml'
  homepage 'http://appgineers.de/mountain/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mountain.app'
end
