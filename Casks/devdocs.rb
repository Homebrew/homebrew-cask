cask 'devdocs' do
  version '0.2.1'
  sha256 '554eb5cbe0051d10bb116dee406e7a093e7cb6ed386574217e82749fcda31bd5'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: '1c157ca1e9184b137f1f5d406b0f4841c0995389ef3a97f37b3fd0aef69a4aaf'
  name 'DevDocs App'
  homepage 'https://github.com/egoist/devdocs-app'

  app 'DevDocs.app'
end
