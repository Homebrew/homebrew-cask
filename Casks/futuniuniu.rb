cask 'futuniuniu' do
  version '4.33.2_2018091002'
  sha256 '90d161d4507ae8d1e0bd26afa1125edbe30e0118be59e7f74b3a9f1f26c1edda'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}_std_release_std_officially.dmg"
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end
