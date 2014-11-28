cask :v1 => 'nsregextester' do
  version :latest
  sha256 :no_check

  url 'http://vegh.ca/nsregextester/NSRegexTester.zip'
  homepage 'https://github.com/aaronvegh/nsregextester'
  license :oss

  app 'NSRegexTester.app'
end
