cask 'dotnet-sdk' do
  version '2.1.103'
  sha256 '6781eb5a7e45b1ad7fc6f2836db0b0fb7eeaf758d0cdc8af54db19eb25e2443f'

  url "https://download.microsoft.com/download/E/2/6/E266C257-F7AF-4E79-8EA2-DF26031C84E2/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
