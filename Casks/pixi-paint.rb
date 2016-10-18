cask 'pixi-paint' do
  version :latest
  sha256 :no_check

  # pixiecdn.com was verified as official when first introduced to the cask
  url 'https://0.pixiecdn.com/PixiePaint-osx.zip'
  name 'Pixi Paint'
  homepage 'https://www.danielx.net/pixel-editor/docs/download'

  app 'Pixi Paint/Pixi Paint.app'
end
