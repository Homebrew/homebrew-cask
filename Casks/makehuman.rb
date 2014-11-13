cask :v1 => 'makehuman' do
  version '1.0.1'
  sha256 'c3a4d693a23aff5e4f6dd93c0452d7d753703d48b9d3600d210c436b6dc756f4'

  url "http://download.tuxfamily.org/makehuman/releases/#{version}/makehuman-#{version}-osx.dmg"
  homepage 'http://www.makehuman.org/'
  license :unknown

  app 'MakeHuman.app'
end
