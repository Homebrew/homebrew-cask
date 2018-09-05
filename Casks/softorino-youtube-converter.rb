cask 'softorino-youtube-converter' do
  version '2.0.19,1534503733'
  sha256 'cce0c71cac8cf1695e14e39711d70e5ce2e0e71b6b61c777e6e9e130c7f5e31e'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage "https://softorino.com/youtube-converter-#{version.major}/"

  app "Softorino YouTube Converter #{version.major}.app"
end
