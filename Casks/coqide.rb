cask 'coqide' do
  version '8.6'
  sha256 'abd00fc22b7a99a214d8b6977c982d6be26060d769f79f42d3ddcc8761bb4f49'

  url "https://coq.inria.fr/distrib/V#{version}/files/CoqIDE_#{version}.dmg"
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
