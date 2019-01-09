cask 'sparkvue' do
  version '3.2.1.3'
  sha256 '37d54175300cbb75bb1e7fec9384af0b7ae1d1f7366be50bb7b6871cddfafdf1'

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
