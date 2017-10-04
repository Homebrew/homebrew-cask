cask 'nteract' do
  version '0.3.1'
  sha256 '46c8b605bb6f34a599b6131854358c81742f1168d2b1768f7669345f8f88b504'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '72a33edd534cb0077df628cfa1342a1904ca415b7755b65f4bfc0347a9c401c2'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
