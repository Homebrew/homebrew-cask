cask 'subsmarine' do
  version '1.3'
  sha256 '17be7a606995cdb9dbfe083720b056160855b52cfedb7371e707b5d596926ff3'

  # cwcbucket.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://cwcbucket.s3.amazonaws.com/subsmarine/subsmarine.app.#{version}.zip"
  appcast 'https://www.cocoawithchurros.com/shine/appcast.php?id=7'
  name 'SubsMarine'
  homepage 'https://www.cocoawithchurros.com/subsmarine.php'

  app 'SubsMarine.app'
end
