cask 'dotnet-sdk' do
  version '2.1.2'
  sha256 '822201fa6ef0c053a97a805b6d66abba2304a2b9c6db9228d9a7f0818ebad252'

  url "https://download.microsoft.com/download/5/D/F/5DF4B836-7DFD-4CCF-AC96-101E2A4C7421/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
