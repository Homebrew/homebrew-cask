cask 'saoimage-ds9' do
  version '7.4'

  if MacOS.release <= :mountain_lion
    sha256 '74e5a43788dc294c8f0c7f023f41ab3dec8aa63f994c097084d7b768009fc056'
    url "http://ds9.si.edu/download/macosxmountainlion/SAOImage%20DS9%20#{version}.dmg"
  elsif MacOS.release <= :mavericks
    sha256 '245643e0d4d7e4470db8eb479b5e437d223ed9af315ff03a93bae2d7438f4b19'
    url "http://ds9.si.edu/download/macosxmavericks/SAOImage%20DS9%20#{version}.dmg"
  elsif MacOS.release <= :yosemite
    sha256 '89fbedaa85fe420a9f26a36d86dce9470829ab68963f01512f6eaae979d379f2'
    url "http://ds9.si.edu/download/macosxyosemite/SAOImage%20DS9%20#{version}.dmg"
  else
    sha256 '07555075ba697458c5f7e5d0d28fb8f4c466723cc20b773d7dcc87ceb263bd4c'
    url "http://ds9.si.edu/download/macosxelcapitan/SAOImage%20DS9%20#{version}.dmg"
  end

  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'
  license :oss

  app 'SAOImage DS9.app'
end
