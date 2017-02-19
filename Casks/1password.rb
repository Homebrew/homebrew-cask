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
    version '6.5.5'
    sha256 '30af7c5a5c7fb7f17d903bed61c7f5e280097967b9ca95cfa744a06b9bfdc366'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '9a21a1c7c579ce3ef4d21597a9267f596d318d7f04a32b498264b8780ce01b69'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true

  zap delete: [
                '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/com.agilebits.onepassword-osx',
                '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
              ]
end
