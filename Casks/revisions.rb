cask 'revisions' do
  version '3.0.1'
  sha256 '3ba2adf68b799444b0a72f37d885e205e037de48fa40ee5dfcb694f1995b4823'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast 'https://revisionsapp.com/releases',
          checkpoint: '8d46ccb7b2b922a54fb6a728999f1bdb77c8c09fbefdc5e1327bab1e95d9b466'
  name 'Revisions'
  homepage 'https://revisionsapp.com/'

  app 'Revisions.app'
end
