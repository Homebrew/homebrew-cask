cask 'pennywise' do
  version '0.6.2'
  sha256 '42c1c07bbae28707f2fac0a56254ca957833c60049da6ff236e307471ef80f71'

  url "https://github.com/kamranahmedse/pennywise/releases/download/v#{version}/Pennywise-#{version}-mac.zip"
  appcast 'https://github.com/kamranahmedse/pennywise/releases.atom'
  name 'Pennywise'
  homepage 'https://github.com/kamranahmedse/pennywise'

  app 'Pennywise.app'
end
