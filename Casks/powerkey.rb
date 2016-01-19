cask 'powerkey' do
  version '1.5'
  sha256 'bd5c66ddb816057e7b301bc1ced9b055f423024b2e8a0648937bba9bbf2311e7'

  url "https://github.com/pkamb/PowerKey/archive/v#{version}.zip"
  appcast 'https://github.com/pkamb/PowerKey/releases.atom',
          checkpoint: '776592bb04be331a5189385dcf83e0fabf7f46a415b2996a242465f3f3ebcb73'
  name 'PowerKey'
  homepage 'https://pkamb.github.io/PowerKey/'
  license :mit

  app 'PowerKey.app'
end
