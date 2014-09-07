class Shotcut < Cask
  version '14.09.03'
  sha256 'ec84451780f180f058730128066a349e62ee5dc30a58d94114ac95f6ff83be90'

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.gsub(/\.\d{2}$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'

  link 'Shotcut.app'
end
