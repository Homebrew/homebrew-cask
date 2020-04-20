cask 'pext' do
  version '0.30'
  sha256 'b4ed7401c253ea747f92c7f32f10f3703901501513b7ec437b9117061d4ff958'

  # github.com/Pext/Pext/ was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
