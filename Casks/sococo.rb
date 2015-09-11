cask :v1 => 'sococo' do
  version '3.5.10_13372'
  sha256 '8852a72506fa26ee56158fec5d814d9c818f775ad13a5a6f2d24f68a902601f8'

  url "http://download.sococo.com/release/Sococo_#{version.gsub('.','_')}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :freemium

  app 'Sococo.app'

  depends_on :macos => '>= :lion'
end
