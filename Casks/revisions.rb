cask :v1 => 'revisions' do
  version '2.0.2'
  sha256 'df6a238771d30d686cae91b72dd95a31ebe35e73354a08c162eb4ea4b9235836'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  name 'Revisions'
  homepage 'https://revisionsapp.com/'
  license :commercial

  app 'Revisions.app'
end
