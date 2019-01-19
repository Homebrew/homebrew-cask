cask 'coqide' do
  version '8.9.0'
  sha256 '8c45f19bc14b9e6421c968439c2665a0c3614e2b62ee7d8bfc4715d9924ce312'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
