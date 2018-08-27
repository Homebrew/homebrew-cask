cask 'coqide' do
  version '8.8.1'
  sha256 '80b51cef6156872f95230c68dd7f3406619f52b6b49daad2b7def7d0d6c721a3'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
