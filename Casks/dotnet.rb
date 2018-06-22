cask 'dotnet' do
  version '2.1.1'
  sha256 '5e2374630ea48d4e71d133a08c7e86d4e5ebb573a07dd99d6fc46af5ebe26e7f'

  url "https://download.microsoft.com/download/9/3/E/93ED35C8-57B9-4D50-AE32-0330111B38E8/dotnet-runtime-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/all'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
