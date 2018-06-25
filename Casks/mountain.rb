cask 'mountain' do
  version '1.6.5'
  sha256 '86140c5469683ed64e9f275240e4e5e157b4b84b39aed65157e412e287c2c9dc'

  url 'https://appgineers.de/mountain/files/Mountain.zip'
  appcast 'https://appgineers.de/mountain/files/mountaincast.xml'
  name 'Mountain'
  homepage 'https://appgineers.de/mountain/'

  app 'Mountain.app'
end
