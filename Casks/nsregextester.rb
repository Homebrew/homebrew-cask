cask 'nsregextester' do
  version :latest
  sha256 :no_check

  # vegh.ca is the official download host per the vendor homepage
  url 'http://vegh.ca/nsregextester/NSRegexTester.zip'
  name 'NSRegexTester'
  homepage 'https://github.com/aaronvegh/nsregextester'
  license :oss

  app 'NSRegexTester.app'
end
