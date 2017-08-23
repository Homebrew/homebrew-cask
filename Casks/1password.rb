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
    version '6.8.1'
    sha256 '65267aa15c620bc3e01df58df5893f1d542bb1c32ed78ac7bcd1857083bb5a70'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '32b8e5fec6ee2d552869091d3e87973ad924d326ac6b8c22845008a53eae19b8'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
