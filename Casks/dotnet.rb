cask 'dotnet' do
  version '2.1.2'
  sha256 '2b47125c50b32f8ce30fd15eaf6d8e87b5b30ded0ce3735398ebd33b20a79913'

  url "https://download.microsoft.com/download/1/f/7/1f7755c5-934d-4638-b89f-1f4ffa5afe89/dotnet-runtime-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
