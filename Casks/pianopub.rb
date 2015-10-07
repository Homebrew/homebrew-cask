cask :v1 => 'pianopub' do
  version '1.5.7'
  sha256 '62abcd753983b9241672a757a5d718c77e7f4dbdac1347dbeb190d0b831bee68'

  url "http://dev.kunugiken.com/Pianopub/release/Pianopub_#{version}.zip"
  appcast 'http://dev.kunugiken.com/appcasts/Pianopub.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Pianopub'
  homepage 'http://dev.kunugiken.com/Pianopub/'
  license :mit

  app 'Pianopub.app'
end
