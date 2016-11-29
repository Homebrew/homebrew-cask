cask 'coqide' do
  version '8.5pl2'
  sha256 'e02a24b87f2aa52d580239ac778b8ee9feee83273ebff49418818c77254fb901'

  url "https://coq.inria.fr/distrib/V#{version}/files/CoqIDE_#{version}.dmg"
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
