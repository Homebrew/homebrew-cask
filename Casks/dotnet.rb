cask 'dotnet' do
  version '2.0.7'
  sha256 '23f1d8f855cd036924dfc4f5fbb1f7acc436cd697a26e72d6f40ba4b8105e3d8'

  url "https://download.microsoft.com/download/A/9/F/A9F8872C-48B2-41DB-8AAD-D5908D988592/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
