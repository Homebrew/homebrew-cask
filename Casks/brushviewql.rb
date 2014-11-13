cask :v1 => 'brushviewql' do
  version '1.1'
  sha256 '5211b8b62a8d03a9859c96ebba94fa3262e633a3f7420a1972eaa1ab37b1347f'

  url 'http://brushviewer.sourceforge.net/brushviewql.zip'
  homepage 'http://brushviewer.sourceforge.net/'
  license :oss

  qlplugin 'BrushViewQL/BrushViewQL.qlgenerator'
end
