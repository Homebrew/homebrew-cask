cask :v1 => 'near-lock' do
  version :latest
  sha256 'e11f2a7d2d3ad4b2bddccb3d3bf369e9c1c84e40cf824a028ad199ba3ed728ec'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
