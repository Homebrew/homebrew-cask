cask 'rapidweaver' do
  version '8.3,20799.1567290120'
  sha256 '88cf12c98d198f5328e12a76cccef8fc8d5a0dd0df63a51d945fb8ce14c5ae72'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver#{version.major}-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
