cask :v1 => 'pianopub' do
  version '1.5.7'
  sha256 '62abcd753983b9241672a757a5d718c77e7f4dbdac1347dbeb190d0b831bee68'

  url "http://dev.kunugiken.com/Pianopub/release/Pianopub_#{version}.zip"
  appcast 'http://dev.kunugiken.com/appcasts/Pianopub.xml',
          :sha256 => '5a120e806605b8c170a543c1fb1ecb22c8a39a7b2ab8f06f7d3efb795017daa4'
  homepage 'http://dev.kunugiken.com/Pianopub/'
  license :unknown    # todo: improve this machine-generated value

  app 'Pianopub.app'
end
