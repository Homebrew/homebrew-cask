cask 'checklister' do
  version '0.4.0'
  sha256 'e1abc5ebb26db9ad01e2e33fdd4ea4646cc4e0fe1fa5f140eb85570a81f25073'

  url "https://github.com/TaiBON/checklister/releases/download/v#{version}/checklister.dmg"
  name 'checklister'
  homepage 'https://github.com/TaiBON/checklister'

  app 'checklister.app'
end
