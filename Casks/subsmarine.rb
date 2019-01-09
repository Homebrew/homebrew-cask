cask 'subsmarine' do
  version '1.2.4'
  sha256 '7afbad7d12a9e3ea4ff414dc7351cd9d8ae612063e1b5cf0d48b28d04f401c9d'

  # amazonaws.com/cwcbucket/subsmarine was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/cwcbucket/subsmarine/subsmarine.#{version}.zip"
  appcast 'https://www.cocoawithchurros.com/shine/appcast.php?id=7'
  name 'SubsMarine'
  homepage 'https://www.cocoawithchurros.com/subsmarine.php'

  app 'SubsMarine.app'
end
