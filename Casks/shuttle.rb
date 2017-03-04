cask 'shuttle' do
  version '1.2.9'
  sha256 '0b80bf62922291da391098f979683e69cc7b65c4bdb986a431e3f1d9175fba20'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: '450d58e7a2032148d809afe3bc6dd4cb7b0fd0bb807855fa17f452c57ace3a3b'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'

  app 'Shuttle.app'

  zap delete: '~/.shuttle.json'
end
