cask 'netron' do
  version '2.5.8'
  sha256 'f64ade141bcf7bc53025eaf72afd17cc1497e7c494dc470b66b68af911c787d3'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
