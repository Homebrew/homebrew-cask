class Shotcut < Cask
  version '14.10.01'
  sha256 '0e354ad7f94455b6e00a8988e27bb8334e0a8cb8b9e15ed40cdda29a35d2293a'

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.gsub(/\.\d{2}$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'
  license :oss

  app 'Shotcut.app'
end
