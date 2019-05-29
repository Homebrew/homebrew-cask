cask 'coqide' do
  version '8.9.1'
  sha256 '4f8fac558076681d1e037ddea6c1752d6a4117c932a8d56082a94deaa73e1e90'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  depends_on macos: '>= :sierra'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
