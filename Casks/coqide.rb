cask 'coqide' do
  version '8.11.1'
  sha256 'fe23177f4d5b05f45bfb42f5fca4b53ab1a097cde68297971917a65b3b8e1638'

  # github.com/coq/coq/ was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  depends_on macos: '>= :sierra'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
