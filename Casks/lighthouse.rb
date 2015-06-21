cask :v1 => 'lighthouse' do
  version :latest
  sha256 :no_check

  url 'https://s3-eu-west-1.amazonaws.com/vinumeris/lighthouse/Lighthouse.dmg'
  name 'Vinumeris Lighthouse'
  homepage 'https://www.vinumeris.com/lighthouse'
  license :closed

  app 'Lighthouse.app'
end
