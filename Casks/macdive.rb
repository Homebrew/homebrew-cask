cask 'macdive' do
  version '2.10.8'
  sha256 '22739b12beff621cf538f35f0813d770244257921789596c0f3999fef998c0bd'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
