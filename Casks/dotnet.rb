cask 'dotnet' do
  version '3.1.4,b51c2705-f7e1-4a59-b6ba-2a70d9caded3:da2567cee8519d5dc4185cbee8f97498'
  sha256 '164e4f0ae4f238a9e5abd2ca5f7bba9a4f0a1146050d0531edb6dffa942eb59b'

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
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
