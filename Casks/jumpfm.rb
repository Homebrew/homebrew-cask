cask 'jumpfm' do
  version '1.0.5'
  sha256 '9cf3e5621a3e62acfabdaf8c9ac6100723072e23452a51a124603fe51beb7842'

  url "https://github.com/heywoodlh/jumpfm/releases/download/v#{version}/jumpfm-#{version}.dmg"
  appcast 'https://github.com/heywoodlh/jumpfm/releases.atom'
  name 'JumpFM'
  homepage 'https://github.com/heywoodlh/jumpfm'

  app 'jumpfm.app'

  zap trash: '~/Library/Application Support/jumpfm'
end
