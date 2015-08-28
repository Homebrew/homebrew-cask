cask :v1 => 'astropad' do
  version :latest
  sha256 :no_check

  url 'http://astro-hq.com.s3.amazonaws.com/astropad-review/Astropad.zip'
  name 'Astropad'
  homepage 'http://astropad.com'
  license :closed

  app 'Astropad.app'
end
