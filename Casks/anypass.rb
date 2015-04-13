cask :v1 => 'anypass' do
  version '1.0.0'
  sha256 '364d108736eddfdb6e7db56430806d790b79e9f8561aedc544fc78d7e41bac54'

  url "http://icyblaze.com/anypass/anypass_mac_#{version.sub(%r{^(\d+\.\d+).*},'\1')}.zip"
  name 'Anypass'
  homepage 'http://icyblaze.com/anypass'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Anypass.app'
end
