cask 'dotnet' do
  version '3.0.0,1b09851c-1c1a-4aeb-a94a-7065db8741c0:b22a0b5501191fe1a263913d8ed11b2e'
  sha256 'ae40801509711b254ca281d23ff20fc2dcd2ac8ab474f55c936e91e43495a573'

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
