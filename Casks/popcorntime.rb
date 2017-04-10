cask 'popcorntime' do
  version :latest
  sha256 :no_check

  url 'https://dl.popcorn-time.to/PopcornTime-latest.pkg'
  name 'Popcorn Time'
  homepage 'https://popcorn-time.to/mac.html'

  pkg 'PopcornTime-latest.pkg'
end
