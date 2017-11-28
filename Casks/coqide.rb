cask 'coqide' do
  version '8.7.0'
  sha256 '2ce75694a60b45d9f43e3d138a974959bda7e82615b8527116ab7cc8e517bcf3'

  url "https://coq.inria.fr/distrib/V#{version}/files/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom',
          checkpoint: '940220c743905372e20c0e5edaaff11920a8b7765d722cf18b71426e4ad8c7c8'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
