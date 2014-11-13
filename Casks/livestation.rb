cask :v1 => 'livestation' do
  version '3.3.0'
  sha256 '8ed0bdcb6aee4dca18e64c6c6390b3f83c67c6d9c36358ff800ece7a870f9dd3'

  url "http://updates.livestation.com/releases/Livestation-#{version}.dmg"
  homepage 'http://www.livestation.com'
  license :unknown

  app 'Livestation.app'
end
