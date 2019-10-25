cask 'coqide' do
  version '8.10.1'
  sha256 '66ced938411ca5d1c61f315cd3538164037da3d167a6c4ed7fc924724a04c63c'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  depends_on macos: '>= :sierra'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
