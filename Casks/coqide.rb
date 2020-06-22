cask 'coqide' do
  version '8.11.2'
  sha256 '18c09fbafaa2731bb7f6cff0b8e821b57cf6857d1bd1609055d0784d445c6d53'

  # github.com/coq/coq/ was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  depends_on macos: '>= :sierra'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
