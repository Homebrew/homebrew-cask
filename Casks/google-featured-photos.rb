cask 'google-featured-photos' do
  version '1.0.0.152'
  sha256 'b1dcae63a6144dedcabdb37106cd2f9990340b24a667c010d9345b8113a33c67'

  url "https://dl.google.com/featuredphotosscreensaver/GoogleFeaturedPhotos-#{version}.dmg"
  name 'Google Featured Photos'
  homepage 'https://plus.google.com/featuredphotos'

  screen_saver 'Google Featured Photos.saver'
end
