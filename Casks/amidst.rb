cask 'amidst' do
  version '4.0'
  sha256 '921300b83acf3a09f72b9adc1abeea6ce9975438b42814ae40c27e9debf13262'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: '84beb95511a46c011ddd2f72ab75c6cf56624d6baf59b85288ab19830620a864'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'
  license :gpl

  app 'Amidst.app'
end
