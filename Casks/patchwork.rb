cask 'patchwork' do
  version '3.17.2'
  sha256 '53d08948316fb31dfe23a72cec40747267b4561b0de6f3f241ed8710b160a1b2'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
