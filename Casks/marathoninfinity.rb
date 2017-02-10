cask 'marathoninfinity' do
  version '20150620'
  sha256 'ec6595f58f718e4274e6a66762084616940e9dfd1c93a011a01b3e95c0fbbdd9'

  # github.com/Aleph-One-Marathon/alephone was verified as official when first introduced to the cask
  url 'https://github.com/Aleph-One-Marathon/alephone/releases/download/release-20150620/MarathonInfinity-20150620-Mac.dmg'
  name 'Marathon Infinity'
  homepage 'https://alephone.lhowon.org'

  app 'Marathon Infinity.app'
end
