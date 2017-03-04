cask 'iloc' do
  version '0.3'
  sha256 '3c9909b73ba4a17aef20cdc7efea2333d94f23fca2c87bc6c402bc4f17ce9ef3'

  url "https://derailer.org/iloc/iloc-#{version}.tgz"
  appcast 'https://derailer.org/iloc/',
          checkpoint: '345ea8840b83e082750936c2462e1bd4a72590f95d480d5a93f6426ece9604cc'
  name 'iloc'
  homepage 'https://derailer.org/iloc/'

  binary "iloc-#{version}/iloc"
end
