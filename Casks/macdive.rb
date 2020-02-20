cask 'macdive' do
  version '2.11.4'
  sha256 'acbd7c7f7e4fe81d47526a4acb6cd2cb9f0062e836c0f3340092dd7cccaf1d58'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
