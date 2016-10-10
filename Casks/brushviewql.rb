cask 'brushviewql' do
  version '1.1'
  sha256 '5211b8b62a8d03a9859c96ebba94fa3262e633a3f7420a1972eaa1ab37b1347f'

  url 'http://brushviewer.sourceforge.net/brushviewql.zip'
  appcast 'http://brushviewer.sourceforge.net/brushviewql.zip',
          checkpoint: '486964fda08be301457c6bf2bb4b72d6d06f73c53e18ab1d467beb9b6ae7dff7'
  name 'BrushViewQL'
  homepage 'http://brushviewer.sourceforge.net/'

  qlplugin 'BrushViewQL/BrushViewQL.qlgenerator'
end
