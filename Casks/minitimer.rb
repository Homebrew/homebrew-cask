cask :v1 => 'minitimer' do
  version '1.0'
  sha256 '848ef850f3bbe703a6d2f7e2513c8a60b82399a20f1ae11f7ee2592d0d55975c'

  url "http://kevingessner.com/public/downloads/miniTimer/#{version}/miniTimer.dmg"
  homepage 'http://kevingessner.com/software/minitimer/'
  license :unknown

  app 'miniTimer.app'
end
