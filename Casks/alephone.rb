cask 'alephone' do
  version '20150620'
  sha256 'b278d702f3d21d85af040fe94d57f6fc7106a2d9752e00d2dae3ee9342657f6b'

  # github.com/Aleph-One-Marathon/alephone was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg"
  appcast 'https://github.com/Aleph-One-Marathon/alephone/releases.atom'
  name 'Aleph One'
  homepage 'https://alephone.lhowon.org/'

  app 'AlephOne.app'
end
