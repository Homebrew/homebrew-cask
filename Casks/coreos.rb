cask 'coreos' do
  version '1.4.6'
  sha256 '9f5bc95fc0e7c9a438ace924d5ccba5c9372991205a2248c88eaac5c98e27ef6'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '6d9aad5d51540d275a38e5b0e35791953c25a669a15421c37b405131bbda9dfc'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
