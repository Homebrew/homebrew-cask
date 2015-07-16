cask :v1 => 'popkey' do
  version :latest
  sha256 :no_check

  url 'https://popkey-downloads.s3.amazonaws.com/releases/darwin/PopKeySetup.dmg'
  name 'PopKey'
  homepage 'http://popkey.co/send-gifs?ref=header_app_nav_section'
  license :gratis

  app 'PopKey.app'
end
