cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '4.4,83'
    sha256 'a8d0182281e6e9fb4fb8d62e957ab600d3937da4e48f229a8ff4678f3be4f088'
    url "https://nektony.com/promo/funter/update/update_#{version.before_comma}(#{version.after_comma}).zip"
    appcast 'https://nektony.com/promo/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
