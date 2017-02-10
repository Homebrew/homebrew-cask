cask 'marathon2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '20150620'
  sha256 '5459d769d903a679b1d15be8aaf14660c47886e9221ec60fc8defd8cad8135ec'

  # github.com/Aleph-One-Marathon/alephone was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg"
  appcast 'https://github.com/Aleph-One-Marathon/alephone/releases.atom',
          checkpoint: '7960a0eee7bd6c594b7a6cf6ce093a71d31715522774224c9def5903390479d6'
  name 'Marathon 2'
  homepage 'https://alephone.lhowon.org'

  app 'Marathon 2.app'
end
