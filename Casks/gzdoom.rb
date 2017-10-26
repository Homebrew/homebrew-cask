cask 'gzdoom' do
  version '3.2.1'
  sha256 '278f9577170524e82105fca524a5afacd09becc127079bd521ca776e6ca826a7'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: 'efe349de8ee3349ecaf474e271c0c3c0410c960c1add490f2ae8ccc8ee66ec7e'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
