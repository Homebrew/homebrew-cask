cask 'oss-browser' do
  version '1.9.1'
  sha256 '25870dee952fa08b39495dba1af4c38b6618c2d1c418bfcd4a9c9616e6760fad'

  url "https://gosspublic.alicdn.com/oss-browser/#{version}/oss-browser-darwin-x64.zip"
  appcast 'https://github.com/aliyun/oss-browser/releases.atom'
  name 'oss-browser'
  name 'OSS Browser'
  homepage 'https://github.com/aliyun/oss-browser'

  app 'oss-browser-darwin-x64/oss-browser.app'
end
