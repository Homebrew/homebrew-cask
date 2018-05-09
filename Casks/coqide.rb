cask 'coqide' do
  version '8.8.0'
  sha256 '285353fff1c98231577e0a2aa77054df80821d7193d0378751b9c1b9facfc36e'

  # github.com/coq/coq was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast 'https://github.com/coq/coq/releases.atom',
          checkpoint: '8e8e9bfa7ec60c48490d8c0eaccd29683f075f8324623d338584eaf00ef33b1d'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version.major_minor_patch}.app"
end
