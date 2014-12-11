cask :v1 => 'pixi-paint' do
  version :latest
  sha256 :no_check

  url 'http://0.pixiecdn.com/PixiePaint-osx.zip'
  homepage 'http://www.danielx.net/pixel-editor/docs/download'
  license :unknown    # todo: improve this machine-generated value

  app 'Pixi Paint/Pixi Paint.app'
end
