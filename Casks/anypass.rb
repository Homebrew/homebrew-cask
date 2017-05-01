cask 'anypass' do
  version '1.0.0'
  sha256 '364d108736eddfdb6e7db56430806d790b79e9f8561aedc544fc78d7e41bac54'

  url "http://icyblaze.com/anypass/anypass_mac_#{version.sub(%r{^(\d+\.\d+).*}, '\1')}.zip"
  appcast 'http://icyblaze.com/anypass/',
          checkpoint: 'a93133b5edb61e88a18e891ac744a700d4d414348b849ede345e7d8c8b5443e0'
  name 'Anypass'
  homepage 'http://icyblaze.com/anypass/'

  app 'Anypass.app'
end
