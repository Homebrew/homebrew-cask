cask 'dotnet' do
  version '2.0.6'
  sha256 'dd0a68cf2ac8cab152c9963cef5840fa4791e506ffa0362cd419883d7af28118'

  url "https://download.microsoft.com/download/8/D/A/8DA04DA7-565B-4372-BBCE-D44C7809A467/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
