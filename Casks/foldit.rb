cask 'foldit' do
  version :latest
  sha256 :no_check

  url 'https://fold.it/portal/files/app/Foldit-osx_x86.zip'
  name 'Foldit'
  homepage 'https://fold.it/portal/'
  license :closed

  app 'Foldit.app'
end
