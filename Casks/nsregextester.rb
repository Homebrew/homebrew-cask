cask 'nsregextester' do
  version :latest
  sha256 :no_check

  # vegh.ca/nsregextester was verified as official when first introduced to the cask
  url 'http://vegh.ca/nsregextester/NSRegexTester.zip'
  name 'NSRegexTester'
  homepage 'https://github.com/aaronvegh/nsregextester'

  app 'NSRegexTester.app'
end
