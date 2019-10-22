cask 'macdive' do
  version '2.11.3'
  sha256 '5b8375f90051e382cdef581c1bed104010347de566c6532dbca591c1e6904ec7'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
