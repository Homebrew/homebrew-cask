cask 'softorino-youtube-converter' do
  version '2.0.23,1538666747'
  sha256 '069ae9b5170763821ca633bf69b597e70d36bbfe468c211799a74912a017acae'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage "https://softorino.com/youtube-converter-#{version.major}/"

  app "Softorino YouTube Converter #{version.major}.app"
end
