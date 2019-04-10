cask 'subsmarine' do
  version '1.3'
  sha256 '17be7a606995cdb9dbfe083720b056160855b52cfedb7371e707b5d596926ff3'

  # amazonaws.com/cwcbucket/subsmarine was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/cwcbucket/subsmarine/subsmarine.app.#{version}.zip"
  appcast 'https://www.cocoawithchurros.com/shine/appcast.php?id=7'
  name 'SubsMarine'
  homepage 'https://www.cocoawithchurros.com/subsmarine.php'

  app 'SubsMarine.app'
end
