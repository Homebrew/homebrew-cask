cask 'pyfa' do
  version '1.23.1'
  sha256 '4e0b4641a0824e99729278b9f077376a17628f685125bef5007587066e580c3f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-#{version}-yc.118.7-1.4-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '443b0342f7a4b5b342de546ecdc50a3145ac6191640a65b04ef1d0e5fcec3298'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'
  license :gpl

  app 'pyfa.app'
end
