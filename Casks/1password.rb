cask '1password' do
  if MacOS.version <= :lion
    version '3.8.22'
    sha256 '3afd75f1bddf791dc7dbc9a7d92ab6eb91ee891407d750cedb7b5aff5fe8bf17'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-#{version}.zip"

    app '1Password.app'
  elsif MacOS.version <= :mavericks
    version '4.4.3'
    sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  else
    version '6.3.4'
    sha256 'cdede5056e7c60a09c65a15e2d9b4e4cd70488e95ead637be0881736508c246d'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  name '1Password'
  homepage 'https://agilebits.com/onepassword'

  auto_updates true

  zap delete: [
                '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/com.agilebits.onepassword-osx',
                '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
              ]
end
