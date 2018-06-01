cask 'dotnet' do
  version '2.1.0'
  sha256 '2a1245fc3d7e9404f0f72e39a929142184c12c22b1f52830275ff650fe279873'

  url "https://download.microsoft.com/download/9/1/7/917308D9-6C92-4DA5-B4B1-B4A19451E2D2/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
