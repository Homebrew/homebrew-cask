cask 'amm' do
  version '0.4.2'
  sha256 '95286bf5237c31bb8c8bff5013aca580625d499a96889251e049bbd0c32f38d8'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: '451904bfb10360aa5430d4e24fee0e72c9543264c2f35a861069069e6dbb571f'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
