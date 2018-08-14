cask 'patchwork' do
  version '3.10.1'
  sha256 'dbf33a2954b22cd0bc833c292741ff05ff932f6b7bf16f86f2347021137d6a47'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
