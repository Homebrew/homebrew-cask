cask 'pgmanage' do
  version '10.1.1'
  sha256 'f8607023373e4cea55c6d1a889e92942bcdb6b386dba087f86d5aa5e376ce06a'

  # github.com/pgManage/pgManage was verified as official when first introduced to the cask
  url "https://github.com/pgManage/pgManage/releases/download/v#{version}/pgManage-#{version}.dmg"
  appcast 'https://github.com/pgManage/pgManage/releases.atom',
          checkpoint: 'fd6af1225a18ea35a0889ecb9171e3b502c37bc150a3a6af35ca9a2b6efa1f5d'
  name 'pgManage'
  homepage 'https://www.workflowproducts.com/services.html#software'

  app 'pgManage.app'
end
