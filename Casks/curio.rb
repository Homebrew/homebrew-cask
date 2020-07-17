cask 'curio' do
  version '14020.5'
  sha256 '3b5694ef98b34f493ecc4cba99bbe2da6f9e0e6167b9784be6807e3bb1fc1ba4'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :mojave'

  app 'Curio.app'
end
