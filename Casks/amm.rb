cask 'amm' do
  version '0.4.0'
  sha256 '8a1a33518f71920132242f6182439f7d9a529d3764dc3dc991776062275ad215'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: '924d6a42f44d911d376249fd5de5eb86181b1d9b3da60d45ea44c3b45711dcf1'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
