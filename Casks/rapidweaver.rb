cask :v1 => 'rapidweaver' do
  version '6.3.5'
  sha256 :no_check # required as upstream package is updated in-place

  # devmate.com is the official download host per the appcast feed
  url "http://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.to_i}/RapidWeaver#{version.to_i}.zip"
  appcast "http://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.to_i}.xml",
            :sha256 => '4dfae736ef9b65d391e69bb5db65ec275968f9a7d6c2cda6d57be2e6abc9fe5b',
            :format => :sparkle
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on :macos => '>= :leopard'

  app 'RapidWeaver 6.app'
end
