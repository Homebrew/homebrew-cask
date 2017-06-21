cask 'shuttle' do
  version '1.2.9'
  sha256 '0b80bf62922291da391098f979683e69cc7b65c4bdb986a431e3f1d9175fba20'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: 'a3106eb50a233be242a85cb52fd14956c5629c4367f86de0fa2ab4d6f63e9208'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'

  app 'Shuttle.app'

  zap trash: '~/.shuttle.json'
end
