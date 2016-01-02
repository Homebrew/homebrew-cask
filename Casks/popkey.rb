cask 'popkey' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://popkey-downloads.s3.amazonaws.com/releases/darwin/PopKeySetup.dmg'
  name 'PopKey'
  homepage 'https://popkey.co/send-gifs?ref=header_app_nav_section'
  license :gratis

  app 'PopKey.app'
end
