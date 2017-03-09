cask 'devdocs-app' do
  version '0.2.2'
  sha256 '50a8a346c6eb457b5c078f11a610ec717295af4f4d54311ba23da1518d960ad3'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}-mac.zip"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: 'b5e3beae81e20809834d230009570702bfe658f7adcc70916f5206665c7411a8'
  name 'DevDocs'
  homepage 'https://github.com/egoist/devdocs-app'

  auto_updates true

  app 'DevDocs.app'
end
