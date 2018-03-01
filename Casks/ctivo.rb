cask 'ctivo' do
  version '3.1.1'
  sha256 'ccf1f0445219c10cb4af82021fa1b338f16e85d4aefde304f99a74791a1f6f69'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '9f1a5a4b16d21f3f02f481d4712833b0b603106a404a208230842ecbc40ec7e4'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  depends_on macos: '>= :mavericks'

  app 'cTiVo.app'
end
