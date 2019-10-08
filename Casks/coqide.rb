cask 'coqide' do
  version '8.10.0'
  sha256 'a9cdca3180563bd97252ceb9d0b2ebe43e98553fc69ceb71d6b6d6621ccbcc16'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  depends_on macos: '>= :sierra'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
