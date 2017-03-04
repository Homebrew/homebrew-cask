cask 'devdocs' do
  version '0.1.0'
  sha256 'ede46d788775fbac7147dc45589f2de27762273962e4219730555896e00c576a'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: 'c8b1dff1f79f31423f1cf14bd37c25f06e594afb97c340e98b3e218089cd8cc6'
  name 'DevDocs App'
  homepage 'https://github.com/egoist/devdocs-app'

  app 'DevDocs.app'
end
