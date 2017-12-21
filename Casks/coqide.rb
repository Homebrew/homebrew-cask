cask 'coqide' do
  version '8.7.1'
  sha256 '664e1e2c0ef647ef23cd1d9a1017e8bd4ba1728f927c935eae99b142c760c715'

  url "https://coq.inria.fr/distrib/V#{version}/files/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom',
          checkpoint: '15ada4aaeeeaa592e3e543b44ec9961bced909adbbc3804ef7cb9e8e95319148'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
