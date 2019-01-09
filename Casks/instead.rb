cask 'instead' do
  version '3.2.2'
  sha256 '2d460eefea97bc78d245393aba0c08a1167f0ce4426f643ebd828d111109cffe'

  # github.com/instead-hub/instead was verified as official when first introduced to the cask
  url "https://github.com/instead-hub/instead/releases/download/#{version}/Instead-#{version}.dmg"
  appcast 'https://github.com/instead-hub/instead/releases.atom'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
