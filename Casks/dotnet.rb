cask 'dotnet' do
  version '2.0.0'
  sha256 'a70cffe0bb2b73a77c59c9de6c7080510a67cff56e519bed77055353e7f90104'

  url "https://download.microsoft.com/download/5/6/B/56BFEF92-9045-4414-970C-AB31E0FC07EC/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
