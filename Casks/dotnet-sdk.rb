cask 'dotnet-sdk' do
  version '2.1.101'
  sha256 'a4d68da13a71e504dea4a512a7f9cfe904380727548d169bc080aca2b5cd1482'

  url "https://download.microsoft.com/download/D/C/F/DCFA73BE-93CE-4DA0-AB76-98972FD6E475/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
