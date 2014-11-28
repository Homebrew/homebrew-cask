cask :v1 => 'eyetv' do
  version '3.6.5'
  sha256 'cc8d7b1db43eabe827bab3a2401be97c6687cf83806ff585e3a125768c8c05f7'

  url "http://files.elgato.com/eyetvdownloads/support/eyetv_#{version.gsub('.','')}_7310.dmg"
  homepage 'http://www.elgato.com/'
  license :unknown

  app 'EyeTV.app'
end
