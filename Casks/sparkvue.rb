cask 'sparkvue' do
  version '3.1.3.3'
  sha256 '5ebc2a3e393d1cebf67442da5dffcccb2820d396df03679f7d209b7e7d8169e9'

  # d207q3v45ji5bb.cloudfront.net was verified as official when first introduced to the cask
  url "https://d207q3v45ji5bb.cloudfront.net/software/sparkvue/#{version.major_minor_patch}/SPARKvue-Trial-#{version}.dmg"
  name 'PASCO SPARKvue'
  homepage 'https://www.pasco.com/prodMulti/sparkvue-software/index.cfm'

  pkg 'SPARKvue.pkg'

  uninstall pkgutil: 'com.pasco.SPARKvue'

  zap trash: [
               '~/Library/Application Support/CrashReporter/SPARKvue_*.plist',
               '~/Library/Application Support/SPARKvueUI',
               '~/Library/Preferences/com.pasco.SPARKvue.plist',
               '~/Library/Caches/com.pasco.SPARKvue',
             ]
end
