cask 'buttercup' do
  version '0.7.1'
  sha256 '3807c6fb545f2eb0f83d98b38cd1910669240ec85a2097587f47a912c1ebb9b3'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/#{version}-alpha/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: 'f9509aad18521511b24c814258977ba56c153a5314aadaf11d9f93f34416bbed'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
