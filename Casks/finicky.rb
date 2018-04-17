cask 'finicky' do
  version '0.5'
  sha256 'a2eba88c657786056d0f867c983f31c786adfe5ecde1aa3c8df94e18c536775c'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom',
          checkpoint: 'e4ad5370cc77f08af5be5ab0d7bab3b1d2f2b0cbd61390dc20c0bfeaf8389533'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  app 'Finicky.app'
end
