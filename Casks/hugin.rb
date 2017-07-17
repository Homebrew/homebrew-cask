cask 'hugin' do
  version '2017.0.0'
  sha256 '4caa1f6d541c78e778d2689a90e1a641df1a51b40aa7246e0811a75f66ca0e2f'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss',
          checkpoint: 'dc3cd74ac990811372b6c1605129e13100b97aed1483147f6fa52e4b394e153e'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
