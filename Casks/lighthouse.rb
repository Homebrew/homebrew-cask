cask 'lighthouse' do
  version :latest
  sha256 :no_check

  # s3-eu-west-1.amazonaws.com/vinumeris/lighthouse was verified as official when first introduced to the cask
  url 'https://s3-eu-west-1.amazonaws.com/vinumeris/lighthouse/Lighthouse.dmg'
  name 'Vinumeris Lighthouse'
  homepage 'https://www.vinumeris.com/lighthouse'

  app 'Lighthouse.app'
end
