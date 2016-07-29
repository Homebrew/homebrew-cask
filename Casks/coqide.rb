cask 'coqide' do
  version '8.5pl1'
  sha256 '4760d90a004bd01be48b1a361314927e9a629eace8b599243e8d64a912acd6df'

  url "https://coq.inria.fr/distrib/V#{version}/files/CoqIDE_#{version}.dmg"
  name 'Coq'
  homepage 'https://coq.inria.fr/'
  license :oss

  app "CoqIDE_#{version}.app"
end
