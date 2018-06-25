cask 'softorino-youtube-converter' do
  version '2.0.18,1526650339'
  sha256 '0836ca98ea6a27da2201dba995e9611200c76c5342fdd515cc81d957fb2c6c2c'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage "https://softorino.com/youtube-converter-#{version.major}/"

  app "Softorino YouTube Converter #{version.major}.app"
end
