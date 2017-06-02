cask 'brushviewql' do
  version '1.1'
  sha256 '5211b8b62a8d03a9859c96ebba94fa3262e633a3f7420a1972eaa1ab37b1347f'

  url 'http://brushviewer.sourceforge.net/brushviewql.zip'
  appcast 'https://sourceforge.net/projects/brushviewer/rss',
          checkpoint: 'c3c9f0da3d3ebd5aaa4610590d5d76067b2e6542feb3d5e277f7fa90dfc9e21f'
  name 'BrushViewQL'
  homepage 'http://brushviewer.sourceforge.net/'

  qlplugin 'BrushViewQL/BrushViewQL.qlgenerator'
end
