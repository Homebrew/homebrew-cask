cask 'duplicati' do
  version '2.0.1.73,2017-07-15'
  sha256 '9f4550958722d08125df303b062e0d22a7981c697f758d45e7b4e1ebb62b1206'

  url "https://updates.duplicati.com/experimental/duplicati-#{version.before_comma}_experimental_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '7b18b4c85186739f3060ae6cd25308992e5d503b3e36e434084089f27ed4eab1'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
