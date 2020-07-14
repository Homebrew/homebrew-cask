cask 'dotnet-sdk' do
  if MacOS.version <= :sierra
    version '2.2.402,7430e32b-092b-4448-add7-2dcf40a7016d:1076952734fbf775062b48344d1a1587'
    sha256 'e74d816bc034d0fcdfa847286a6cad097227d4864da1c97fe801012af0c26341'
  else
    version '3.1.302,fff497aa-e6f6-4556-b67b-d139e772156f:4efa99b6bf0cb59104920dfd5f65f8a8'
    sha256 'c94d7ff32ada2a5df97fd34820b022986edc3d0d9db4a6d4a63f26be7adf4090'
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-preview',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: [
                       'com.microsoft.dotnet.*',
                       'com.microsoft.netstandard.pack.targeting.*',
                     ],
            delete:  [
                       '/etc/paths.d/dotnet',
                       '/etc/paths.d/dotnet-cli-tools',
                     ]

  zap trash: [
               '~/.dotnet',
               '~/.nuget',
             ]
end
