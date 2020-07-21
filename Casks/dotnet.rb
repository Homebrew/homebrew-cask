cask 'dotnet' do
  version '3.1.6,913dab92-cfee-4014-bc48-d520b44731c0:1e8734857e417362484c7b8f35563946'
  sha256 '81333d7e1d49288a22340a544ff6e2201e34fc77fd509067c4b08e989bcf67e7'

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast 'https://dotnet.microsoft.com/download/dotnet-core'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet-sdk',
                         'dotnet-preview',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
