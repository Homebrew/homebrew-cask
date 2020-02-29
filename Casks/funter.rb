cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '4.5.2,90'
    sha256 'd10b4a9ffa0b9d856ae63f22a709e3d2db2aae1f13c0f2eee82f5c4c773afeff'
    url "https://nektony.com/promo/funter/update/update_#{version.before_comma}(#{version.after_comma}).zip"
    appcast 'https://nektony.com/promo/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
