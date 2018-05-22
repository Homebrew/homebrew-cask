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
  elsif MacOS.version <= :sierra
    version '6.8.9'
    sha256 'd7cc24dc354f27441929350b9e6e2e4a710d6ed0bdab06f0e9be07160fe04200'

    # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
    url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  else
    version '7.0'
    sha256 '6f25d55053d5501ece2617d1d3c78f5a09eec6f14d8b404fc265389732f7ec91'

    # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
    url "https://c.1password.com/dist/1P/mac7/1Password-#{version}.pkg"

    pkg "1Password-#{version}.pkg"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM7',
          checkpoint: '8e429ed32182657fe4b490486947246d91251853f0f39778d0976b2f8b3ba573'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true

  uninstall pkgutil: 'com.agilebits.pkg.onepassword'

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
