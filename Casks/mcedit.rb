cask 'mcedit' do
  version '1.5.4.1'
  sha256 '29bde806dc415435296e14613f9052a38891e87189f63a30bd69494e13708953'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '5006f92d219e88b424172f139c433f225ec4e6255010c59b6feef67420ee1b93'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'

  app 'mcedit.app'
end
