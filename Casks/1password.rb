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
    version '6.5.3'
    sha256 '1771155ee1b7fc97db71d34d99ed906e6e37200b0ae4f6d310da00c8de5ec27a'

    # d13itkw33a7sus.cloudfront.net was verified as official when first introduced to the cask
    url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '9944f1ff5b4d9157a82a680da6c47b7d3db9d9332afd8c18748eaad48a5ae56b'
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
