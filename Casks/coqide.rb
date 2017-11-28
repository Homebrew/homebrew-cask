cask 'coqide' do
  version '8.7.0'
  sha256 '2ce75694a60b45d9f43e3d138a974959bda7e82615b8527116ab7cc8e517bcf3'

  url "https://coq.inria.fr/distrib/V#{version}/files/coq-#{version}-installer-macos.dmg"
  appcast 'https://coq.inria.fr/rss.xml',
          checkpoint: '2ab7b35d14b268d07799a2d57ea36795a9e47fc2cc1678284a072a38cd9f3737'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
