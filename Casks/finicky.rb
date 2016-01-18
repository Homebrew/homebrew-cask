cask 'finicky' do
  version '0.5'
  sha256 'a2eba88c657786056d0f867c983f31c786adfe5ecde1aa3c8df94e18c536775c'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom',
          checkpoint: '4bcb25e5a86bc228c2abbf30df295cdfeb992e4a7038e2d2f6380ec793e75e29'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'
  license :mit

  app 'Finicky.app'
end
