cask 'marathon' do
  version '20150620'
  sha256 'd7e1a4063f19d247b738b1b856e48c24ea37b2543306de7608d65cb03d8d4327'

  # github.com/Aleph-One-Marathon/alephone was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg"
  appcast 'https://github.com/Aleph-One-Marathon/alephone/releases.atom',
          checkpoint: '7960a0eee7bd6c594b7a6cf6ce093a71d31715522774224c9def5903390479d6'
  name 'Marathon'
  homepage 'https://alephone.lhowon.org'

  app 'Marathon.app'
end
