cask 'dotnet-sdk' do
  version '2.0.2'
  sha256 '4cfbc7126604624b48c3c4fa63d47539bdeda98ddec55423f8f9696d331fb9dd'

  url "https://download.microsoft.com/download/7/3/A/73A3E4DC-F019-47D1-9951-0453676E059B/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
