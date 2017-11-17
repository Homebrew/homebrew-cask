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
    version '6.8.4'
    sha256 '6d86d1d7c75e1f2245af955c9c94ce49d5293c1cde7be98ca3268c0d3106b342'

    # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
    url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.major}.app"
  end

  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '6dfb8fc9495094ee9af5fb9f603aed25391449119fefd35d7d374e8c97ad3be8'
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
