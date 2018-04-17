cask 'coqide' do
  version '8.7.2'
  sha256 'ad3e7239c3bd157bc8a14d3b5fa7c8bf34e2c9c5db83703330591610e845d35f'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom',
          checkpoint: '96ab2db426f4a4e9c5bb0f35cb45b8d4ad03fafdf4f2e52af7e3547d2c242579'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
