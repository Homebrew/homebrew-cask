cask 'dotnet-sdk' do
  version '2.2.100'
  sha256 '3b40cb7c96d982319b8fd0b5d45f97ddbe857e547582ef8a1f1ab636ca2eb030' # DevSkim: ignore DS173237

  url "https://download.visualstudio.microsoft.com/download/pr/29457b8f-6262-4c4b-8a54-eef308346842/3c7ec575796a2ef0e826a07ca4d13084/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-preview',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  [
                       '/etc/paths.d/dotnet',
                       '/etc/paths.d/dotnet-cli-tools',
                     ]

  zap trash: '~/.nuget'
end
