cask 'operadriver' do
  version '2.33'
  sha256 '6fac87ee87101d911d911db0c2747fe6e9d53957026ac5941b011feb19c4121b'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: '6bf9f319d12dbea77aa42ce1944165f2eed2a863662d42d31c3a2735b48525a7'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
