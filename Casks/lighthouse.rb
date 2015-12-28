cask 'lighthouse' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/vinumeris/lighthouse/Lighthouse.dmg'
  name 'Vinumeris Lighthouse'
  homepage 'https://www.vinumeris.com/lighthouse'
  license :apache

  app 'Lighthouse.app'
end
