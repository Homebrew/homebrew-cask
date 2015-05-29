cask :v1 => 'cura' do
  version '15.02.1'
  sha256 'a8d174a6921281704b408c74fd7414b3b2a67ddd2787707db71c02c36a004088'

  url "https://ultimaker.com/en/software/download/23/Cura-#{version}-MacOS.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
