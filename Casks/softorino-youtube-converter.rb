cask 'softorino-youtube-converter' do
  version '2.1.1,1545414679'
  sha256 '79b63ee355a1b70d27d3a218c8169f8a67ae38705f5f5ee515bc4e8d4b0f97e3'

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.syc2/#{version.before_comma}/#{version.after_comma}/SYC2-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.syc#{version.major}.xml"
  name 'Softorino YouTube Converter'
  homepage "https://softorino.com/youtube-converter-#{version.major}/"

  app "Softorino YouTube Converter #{version.major}.app"
end
