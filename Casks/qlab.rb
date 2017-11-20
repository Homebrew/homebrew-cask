cask 'qlab' do
  version '4.1.4'
  sha256 '524878b5c7503386a73fc72f1ac0a22c377d24a7ab8c7154b2c75239e3ea9a7e'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: '44a446009a8958ed98cc61703798d6562da301091d981743b3cd448086669924'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
