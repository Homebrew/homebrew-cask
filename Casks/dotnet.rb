cask 'dotnet' do
  version '2.0.5'
  sha256 '7705771e6ee2551fd9db9f0219470dcd6db81a35eeae2737f68479ad9107010c'

  url "https://download.microsoft.com/download/1/1/0/11046135-4207-40D3-A795-13ECEA741B32/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
