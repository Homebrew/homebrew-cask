cask 'duplicati' do
  version '2.0.1.53,2017-03-13'
  sha256 '6e147cb47326c8376049ffb381d2e438cea48bde9e2717c167018709e3931185'

  url "https://updates.duplicati.com/experimental/duplicati-#{version.before_comma}_experimental_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: 'fb7210a75a4678a6fbdf376fd2bcc1e4536234e5f5790c9f0c739ce22a43551c'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
