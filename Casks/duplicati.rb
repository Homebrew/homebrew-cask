cask 'duplicati' do
  version '2.0.1.53,2017-03-13'
  sha256 '6e147cb47326c8376049ffb381d2e438cea48bde9e2717c167018709e3931185'

  url "https://updates.duplicati.com/experimental/duplicati-#{version.before_comma}_experimental_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '06ec236e8d09ab811b345a6001a1d17e165d5f30bf9ec658ad855536c4dd89f3'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
