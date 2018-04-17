cask 'foldit' do
  version :latest
  sha256 :no_check

  url 'https://fold.it/portal/files/app/Foldit-osx_x86.dmg'
  name 'Foldit'
  homepage 'https://fold.it/portal/'

  app 'Foldit.app'
end
