cask 'google-featured-photos' do
  version '1.0.0.208'
  sha256 '4d4abc378b38278b0cd247e99a008c730a3b6b77824437b01db0bf8beaf24bfb'

  url "https://dl.google.com/featuredphotosscreensaver/GoogleFeaturedPhotos-#{version}.dmg"
  name 'Google Featured Photos'
  homepage 'https://plus.google.com/featuredphotos'

  screen_saver 'Google Featured Photos.saver'
end
