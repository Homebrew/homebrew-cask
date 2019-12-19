cask 'music-bar' do
  version :latest
  sha256 :no_check

  # github.com/musa11971/Music-Bar was verified as official when first introduced to the cask
  url 'https://github.com/musa11971/Music-Bar/releases/latest/download/Music.Bar.zip'
  name 'Music Bar'
  homepage 'https://musa11971.github.io/Music-Bar/'

  app 'Music Bar.app'
end
