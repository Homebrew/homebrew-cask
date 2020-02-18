cask 'patchwork' do
  version '3.17.3'
  sha256 '69cbe8e2b09fbbde8918d94974222da869058ab799a41e0082af17466b16011b'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
