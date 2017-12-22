cask 'dotnet' do
  version '2.0.4'
  sha256 '44284adbe817a1c61e7c255ebcabba717de77f379254606f35449949890db1fb'

  url "https://download.microsoft.com/download/2/B/2/2B2854E7-7EAE-4FE9-85D2-19ACCD716F18/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
