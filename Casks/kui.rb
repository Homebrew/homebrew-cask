cask 'kui' do
  version :latest
  sha256 :no_check

  # kui-shell.org was verified as official when first introduced to the cask
  url 'https://macos-tarball.kui-shell.org/'
  name 'Kui'
  homepage 'https://github.com/IBM/kui'

  app 'Kui-darwin-x64/Kui.app'
end
