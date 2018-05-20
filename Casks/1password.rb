cask '1password' do
  if MacOS.version <= :lion
    version '3.8.22'
    sha256 '3afd75f1bddf791dc7dbc9a7d92ab6eb91ee891407d750cedb7b5aff5fe8bf17'

    # cache.agilebits.com/dist/1P/mac was verified as official when first introduced to the cask
    url "https://cache.agilebits.com/dist/1P/mac/1Password-#{version}.zip"

    app '1Password.app'
  elsif MacOS.version <= :mavericks
    version '4.4.3'
    sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'

    # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
    url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  else
    version '6.8.9'
    sha256 'd7cc24dc354f27441929350b9e6e2e4a710d6ed0bdab06f0e9be07160fe04200'

    # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
    url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: 'eb8b60476f30a53f496a84e809b948faf81ea9f9ab442f4c923e48720e5a1f2a'
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
