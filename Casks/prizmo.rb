cask 'prizmo' do
  version '4.0.3'
  sha256 '37251e6faab7589a073f750fecb8b9e30a0adb44fb04cf851fc51ad8b361f89f'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
