cask 'curio' do
  version '14010.4'
  sha256 'd9efe96b6759866c4f64c7cea40a14148b896138902ba61ca0e48af7976031fd'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :mojave'

  app 'Curio.app'
end
