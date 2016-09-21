cask 'foldit' do
  version :latest
  sha256 :no_check

  url 'https://fold.it/portal/download/osx'
  name 'Foldit'
  homepage 'https://fold.it/portal/'
  license :closed # Executable free to distribute, no source code disclosure

  app 'Foldit.app'
end
