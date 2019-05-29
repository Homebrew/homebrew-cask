cask 'softorino-youtube-converter' do
  version '2.1.3,1554224549'
  sha256 '65aca509cc52babfd2ee2493552d57e6497d768f689f8f343a8c3ab5a067b8df'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage "https://softorino.com/youtube-converter-#{version.major}/"

  app "Softorino YouTube Converter #{version.major}.app"
end
