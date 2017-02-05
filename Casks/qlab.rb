cask 'qlab' do
  version '3.2.5'
  sha256 'e2d4f3af691e45b1b4585d979a3e6cdad030e99b5de2172610148baeb49d932c'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}.php",
          checkpoint: 'da20cac6a998b60e92a498639b2ff7dd69e3840d65a1f80de75e88ed65c704d5'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  app 'QLab.app'
end
