cask :v1 => 'hotslogs-uploaderfx' do
  version '1.3.0'
  sha256 '2c05001614bfc2ea0c1587f7f2837607185d477c5c30c066109f6a49da04f436'

  url 'https://github.com/eivindveg/HotSUploader/releases/download/v1.3.0/HotSLogs.UploaderFX-1.3.0.dmg'
  name 'HotSLogs UploaderFx'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotsLogs UploaderFx.app'
end
