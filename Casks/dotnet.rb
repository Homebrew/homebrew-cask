cask 'dotnet' do
  version '2.0.3'
  sha256 '834973adfe31fd7011f0b4a18976ceb9271cf572d1a5a9503275582ce79a911d'

  url "https://download.microsoft.com/download/5/C/1/5C190037-632B-443D-842D-39085F02E1E8/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
