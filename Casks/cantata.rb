cask 'cantata' do
  version '2.0.0'
  sha256 'fbee5fbf1de70cf963abade3c19e29f1a4f5d4a57fd5013b910daba59e48a996'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '9e83853519d267f2a7b091c4ff13287117aa82447c61ae0887aed91091057c71'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'
  license :gpl

  app 'Cantata.app'
end
