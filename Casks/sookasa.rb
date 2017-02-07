cask 'sookasa' do
  version '3.20.9'
  sha256 '45bacea4790b2382df29d44e9f1df60c28a51fee36637e566a3863cc73a877af'

  # d2rs8uj3cnos4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  name 'Sookasa'
  homepage 'https://www.sookasa.com/'

  pkg "Sookasa_#{version}.pkg"

  uninstall quit:    'com.sookasa.Sookasa',
            pkgutil: 'com.sookasa.Sookasa'
end
