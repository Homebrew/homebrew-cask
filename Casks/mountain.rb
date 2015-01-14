cask :v1 => 'mountain' do
  version :latest
  sha256 :no_check

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml'
  homepage 'http://appgineers.de/mountain/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mountain.app'
end
