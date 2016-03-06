cask 'brave' do
  version '0.8.0dev'
  sha256 '20ed387ee73d545c39fa74537f63ae7d887272ba7cefef50285b194769891f5b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'a07fae2c3fcae772a2f783888603dc037f3bee933426dd54855e701f7ecee108'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
