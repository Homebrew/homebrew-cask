cask :v1 => 'onepassword' do

  if MacOS.version < :mountain_lion
    version '3.8.22'
    sha256 '3afd75f1bddf791dc7dbc9a7d92ab6eb91ee891407d750cedb7b5aff5fe8bf17'
    app '1Password.app'
  elsif MacOS.version < :yosemite
    version '4.4.3'
    sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'
    app '1Password 4.app'
  else
    version '5.0.2'
    sha256 'b6b0050d6c8364190897cd99951ca28c5a3ccf01ec5dd3c8025b6cafb4f6758a'
    app '1Password 5.app'
  end

  if MacOS.version < :mountain_lion
    url "http://i.agilebits.com/dist/1P/mac/1Password-#{version}.zip"
  else
    url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  end
  homepage 'https://agilebits.com/onepassword'
  license :commercial

  zap :delete => [
                  '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/com.agilebits.onepassword-osx',
                  '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
                 ]
end
