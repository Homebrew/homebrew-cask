cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '4.6,93'
    sha256 '77e2623933607ce21067434e90e3ca4cc794161ce6b3ee2ea141380cca52527b'
    url "https://nektony.com/promo/funter/update/update_#{version.before_comma}(#{version.after_comma}).zip"
    appcast 'https://nektony.com/promo/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
