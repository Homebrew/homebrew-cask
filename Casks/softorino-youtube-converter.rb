cask 'softorino-youtube-converter' do
  version '2.1.9,1568242978'
  sha256 'a3e900c41f76cf493a507280fcb48457a3dce5d91bc1e77a11e3c02ee0d4e374'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
