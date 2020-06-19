cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '5.0'
    sha256 '16320269bb384cdbe3d2c94fb7033e6479a576b31d0548d73d6f7587c1af6e34'
    url 'https://nektony.com/download/funter/Funter.dmg'
    appcast 'https://nektony.com/pro-support/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
