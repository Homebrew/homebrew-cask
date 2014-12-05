cask :v1 => 'keyremap4macbook' do
  if MacOS.version < :snow_leopard
    version '5.1.0'
    sha256 '06adf518508ac5a449bc623871c7606a35a74771d7e636371dc2a846add91389'
    url "https://pqrs.org/osx/karabiner/files/KeyRemap4MacBook-#{version}.pkg.tar.gz"
  elsif MacOS.version < :mavericks
    version '8.4.0'
    sha256 '39fb33460f1abec99235c2095bf766d112cc62204c944cc43fd46f3cdb5cc099'
    url "https://pqrs.org/osx/karabiner/files/KeyRemap4MacBook-#{version}.dmg"
  else
    # Unusual case: there is no fall-through.  Each version of the software is
    # specific to an OS X release, so define nothing when the release is unknown.
  end

  homepage 'https://pqrs.org/macosx/keyremap4macbook/'
  license :unknown

  pkg 'KeyRemap4MacBook.pkg'

  uninstall :quit => 'org.pqrs.KeyRemap4MacBook',
            :pkgutil => 'org.pqrs.driver.KeyRemap4MacBook',
            :kext => 'org.pqrs.KeyRemap4MacBook.*'

  zap       :delete => [
                        '~/Library/Application Support/KeyRemap4MacBook',
                        '~/Library/Caches/org.pqrs.KeyRemap4MacBook',
                        '~/Library/Preferences/org.pqrs.KeyRemap4MacBook.plist',
                       ]

  depends_on :macos => %w{
                          :tiger
                          :leopard
                          :snow_leopard
                          :lion
                          :mountain_lion
                         }
end
