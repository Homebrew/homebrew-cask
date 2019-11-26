cask 'dotnet-sdk' do
  if MacOS.version <= :sierra
    version '2.2.402,7430e32b-092b-4448-add7-2dcf40a7016d:1076952734fbf775062b48344d1a1587'
    sha256 'e74d816bc034d0fcdfa847286a6cad097227d4864da1c97fe801012af0c26341'
  else
    version '3.0.101,1b9f265d-ba27-4f0c-8b4d-1fd42bd8448b:2bbd64abddeeea91149df3aa39d049ae'
    sha256 '9d40f99047c2713efcf48c67c80b3bac0fcd24c87bdf7263b8e37e3bdf9901e9'
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
