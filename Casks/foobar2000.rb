cask 'foobar2000' do
  version '2.2.5'
  sha256 '980e2c1222614528fb528edac7c795f93aa68c965dfaae4ef112e67cc91f25a0'

  # url is unstable"
  url do
    require 'open-uri'
    base = 'https://www.foobar2000.org'
    download_page = URI("#{base}/mac").read.scan(%r{href="([^"]+v#{version}.dmg)"}).flatten.first
    file = URI("#{base}#{download_page}").read.scan(%r{href="([^"]+v#{version}.dmg)"}).flatten.first
    "#{base}#{file}"
  end
  appcast 'https://www.foobar2000.org/changelog-mac'
  name 'foobar2000'
  homepage 'https://www.foobar2000.org/mac'

  app 'foobar2000.app'

  zap trash: [
               '~/Library/foobar2000',
               '~/Library/Preferences/com.foobar2000.mac.plist',
             ]
end
