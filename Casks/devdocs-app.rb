cask 'wwdc' do
  version '0.2.2'
  sha256 '51c6efb66ffbb5920024c8aa1990c631a170d31c'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}-mac.zip"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: 'b5e3beae81e20809834d230009570702bfe658f7adcc70916f5206665c7411a8'
  name 'DevDocs'
  homepage 'https://github.com/egoist/devdocs-app'

  auto_updates true

  app 'DevDocs.app'
end
