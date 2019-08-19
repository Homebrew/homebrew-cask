cask 'macdive' do
  version '2.11.0'
  sha256 '3dadb11aa5c3fafbecd1cbe89058473b0690b8a09b66e8a3a1e2ae1795e01a7f'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
