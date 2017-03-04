cask 'swimat' do
  version '1.3.2'
  sha256 'af7b8b17748848c96b2ad48a7493a4a6076f2cd3643da759346fe3aadc827f9d'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '91ad576c11973d7023cff9aea04d2ea6cd28b0bd40062813e3369f8da78ee403'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
