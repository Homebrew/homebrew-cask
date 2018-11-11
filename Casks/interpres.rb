cask 'interpres' do
  version '1.4.1'
  sha256 '864cf54dec36ea6c6fb7b7eb4ba7cf1fc0a59340f71b02ce051ad512712369e6'

  url "https://sites.google.com/site/erikandremendoza/Interpres#{version.no_dots}.zip"
  name 'Interpres'
  homepage 'https://sites.google.com/site/erikandremendoza/'

  app 'Interpres.app'
end
