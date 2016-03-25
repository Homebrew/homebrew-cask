cask 'pixi-paint' do
  version :latest
  sha256 :no_check

  # pixiecdn.com was verified as official when first introduced to the cask
  url 'http://0.pixiecdn.com/PixiePaint-osx.zip'
  name 'Pixi Paint'
  homepage 'https://www.danielx.net/pixel-editor/docs/download'
  license :mit

  app 'Pixi Paint/Pixi Paint.app'
end
