cask 'anypass' do
  version '1.0.0'
  sha256 '364d108736eddfdb6e7db56430806d790b79e9f8561aedc544fc78d7e41bac54'

  url "http://icyblaze.com/anypass/anypass_mac_#{version.sub(%r{^(\d+\.\d+).*}, '\1')}.zip"
  appcast 'http://icyblaze.com/anypass/',
          checkpoint: 'e438ed63fbe147117168c65645e79c5068b5ad10d2f0cf6ade97d29228723b8a'
  name 'Anypass'
  homepage 'http://icyblaze.com/anypass/'

  app 'Anypass.app'
end
