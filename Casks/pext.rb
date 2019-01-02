cask 'pext' do
  version '0.22'
  sha256 'a273a78be94e883fc57050f284486ac2c53a4c06e0b70b304146475f2e162ca1'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
