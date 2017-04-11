cask 'chatology' do
  version '1.1.2'
  sha256 '133bd7c2d13bcad042b0c885d916edcf88073bfb2a0d340d1243184ca55e8370'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php',
          checkpoint: '5572a3834d8dbf929f111a3184824624e62b35f3346ed898c8d6b9b35014991f'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
