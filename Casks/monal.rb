cask 'monal' do
  version '2.4b2'
  sha256 '81e9e8d460fcc937e98c4988766330b134431e7705f75bbae8f20169bef9d410'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
