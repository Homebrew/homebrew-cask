cask 'dotnet-sdk' do
  version '2.1.102'
  sha256 '73cec981bffae416b8c985031abfbcefc408ad750eda84ddeabfffabcf709d3b'

  url "https://download.microsoft.com/download/1/2/E/12E2BC14-7A9F-4497-A351-02B7C2DDD599/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
