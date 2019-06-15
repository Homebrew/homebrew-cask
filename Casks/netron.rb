cask 'netron' do
  version '3.1.4'
  sha256 '097bfd0dd126c8894c9a8829bc5808b6d8c22d1f0eb576005f8b68e0bc8a0582'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
