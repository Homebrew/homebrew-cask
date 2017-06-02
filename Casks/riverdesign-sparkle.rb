cask 'riverdesign-sparkle' do
  version :latest
  sha256 :no_check

  url 'https://sparkleapp.com/download'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
