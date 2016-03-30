cask 'coqide' do
  version '8.5'
  sha256 'fe5cf6326b34f70b84fe7ad1d8fa6aab41fb2439478844ecda641528da3d1951'

  url "https://coq.inria.fr/distrib/V#{version}/files/CoqIDE_#{version}.dmg"
  name 'Coq'
  homepage 'https://coq.inria.fr/'
  license :oss

  app "CoqIDE_#{version}.app"
end
