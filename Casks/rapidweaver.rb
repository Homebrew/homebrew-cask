cask :v1 => 'rapidweaver' do
  if MacOS.release <= :leopard
    version '5.3.1'
    sha256 'c13d1a09be3b86f0b6a4896a30dcd0d1403ff139eb9d5677d2772e701f32e7f7'
    # realmacmedia.com is the official download host per the vendor homepage
    url "http://downloads.realmacmedia.com/rapidweaver/rapidweaver_#{version.gsub('.','')}.zip"
  elsif MacOS.release <= :snow_leopard
    version '5.3.2'
    sha256 'd709fe77b88fde7fe3ff0c608cc5f6022abc353456cd8c372db4ec3d8fbaf6c6'
    # realmacmedia.com is the official download host per the vendor homepage
    url "http://downloads.realmacmedia.com/rapidweaver/rapidweaver_#{version.gsub('.','')}.zip"
  else
    version '6.2.3'
    sha256 :no_check # required as upstream package is updated in-place
    # devmate.com is the official download host per the vendor homepage
    url "http://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.to_i}/RapidWeaver#{version.to_i}.zip"
    appcast "http://www.realmacsoftware.com/stats/rapidweaver#{version.to_i}.php",
            :sha256 => '4aea6e90591f80fc6a8f805b877ecab25d6116e7e6fb67fabbc3b0f74b3aacad',
            :format => :sparkle
  end

  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on :macos => '>= :leopard'

  app 'RapidWeaver.app'
end
