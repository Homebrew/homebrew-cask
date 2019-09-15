cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '4.5.1,87'
    sha256 '4ec92d8d507fa78d0b5194700d62040c21f99d5c3e6a53c5badd8fb3306678f3'
    url "https://nektony.com/promo/funter/update/update_#{version.before_comma}(#{version.after_comma}).zip"
    appcast 'https://nektony.com/promo/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
