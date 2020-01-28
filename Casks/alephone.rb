cask 'alephone' do
  version '20190331'
  sha256 '4aaa16cd93aeee6e22fee5808a2e1a96bcb395945fd45a337c62832aee3303cc'

  # github.com/Aleph-One-Marathon/alephone was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg"
  appcast 'https://github.com/Aleph-One-Marathon/alephone/releases.atom'
  name 'Aleph One'
  homepage 'https://alephone.lhowon.org/'

  app 'AlephOne.app'
end
