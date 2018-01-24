cask 'coqide' do
  version '8.7.1-1'
  sha256 '16c05be6de9094f140dd9659c65d83e3a10f701ae33be8eb3cda354da78496ce'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom',
          checkpoint: '91af0d574c77ef0997d1f23eb594a1eed4889185ebb4d48db0ff267cd0894d13'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
