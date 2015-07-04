cask :v1 => '32-bit-system-preferences' do
  version '1.0'
  sha256 '12276b0e2311da0f188e616443bed4f699e9902b8ca60fc2da20ee5014ea74e2'

  url "https://github.com/kyleheyne/32-Bit-System-Preferences/blob/master/bin/#{version}.zip?raw=True"
  name '32-Bit System Preferences'
  homepage 'https://github.com/kyleheyne/32-Bit-System-Preferences'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :zip
  app '1.0/32-Bit System Preferences.app'
end
