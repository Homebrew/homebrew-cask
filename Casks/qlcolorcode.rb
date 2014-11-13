cask :v1 => 'qlcolorcode' do
  version '2.0.2'
  sha256 '317eda251ea5af8412401562395d2fbedb2dd915a7d927479cf09ac7251c4074'

  url "https://qlcolorcode.googlecode.com/files/QLColorCode-#{version}.tgz"
  homepage 'https://code.google.com/p/qlcolorcode/'
  license :oss

  qlplugin "QLColorCode-#{version}/QLColorCode.qlgenerator"
end
