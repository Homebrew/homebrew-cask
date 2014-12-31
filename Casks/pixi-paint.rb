cask :v1 => 'pixi-paint' do
  version :latest
  sha256 :no_check

  url 'http://0.pixiecdn.com/PixiePaint-osx.zip'
  homepage 'http://www.danielx.net/pixel-editor/docs/download'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixi Paint/Pixi Paint.app'
end
