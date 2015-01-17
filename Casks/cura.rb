cask :v1 => 'cura' do
  version '14.12.1'
  sha256 'ace005ffd7549a6cf242f961da411d4d789e8352f8dd3b2ba0a0f8a766e99dc9'

  url "https://ultimaker.com/en/software/download/15/Cura-#{version}-MacOS.dmg"
  homepage 'https://ultimaker.com/'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
