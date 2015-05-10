cask :v1 => 'revisions' do
  version '2.0.1'
  sha256 'd9eaa948cdc9cf40ffa8c56e5ea03c5afd54f254aa5f18ee1054d551e406f262'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  name 'Revisions'
  homepage 'https://revisionsapp.com/'
  license :commercial

  app 'Revisions.app'
end
