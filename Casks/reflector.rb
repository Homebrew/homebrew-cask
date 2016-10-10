cask 'reflector' do
  version '2.5.3'
  sha256 '36785a59a05d77ca9ade8a852e34e78ba92df299e4b026ead8421b165789a6c8'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: 'b0ae3b43137f370692a5be449305808691a6bff98be1fa902fa0a085d3984a89'
  name 'Reflector 2'
  homepage 'https://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
