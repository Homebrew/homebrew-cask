cask 'qdslrdashboard' do
  version '3.5.6'
  sha256 '524f40ded6b58ecd9bea138b225532948079efc6ef9635c3dab561bae7cb8a1e'

  # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
  url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_OSX_x64.dmg"
  name 'qDslrDashboard'
  homepage 'https://dslrdashboard.info/'

  app 'qDslrDashboard.app'
end
