cask 'amm' do
  version '0.4.5'
  sha256 '1e9363fecf5fd21b2bb82a38f0a72e50468f0336f3f8985df8a36e3029ca6121'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: 'f9f7c7fcacee4c29ea6b49ff2b2765045d78b3ac9d0f4420552bacec5b0cdf61'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
