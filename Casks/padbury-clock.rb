cask :v1 => 'padbury-clock' do
  version :latest
  sha256 :no_check

  url 'http://padbury.me/clock/Padbury-Clock.zip'
  name 'Padbury Clock'
  homepage 'http://padbury.me/clock/'
  license :gratis

  screen_saver 'Padbury Clock.saver'
end
