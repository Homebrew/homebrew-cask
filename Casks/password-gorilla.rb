cask 'password-gorilla' do
  version '1.5.3.7.3'
  sha256 '877854465c7264198f40ab7a13e06a7bd1cf36431242dd3888ed6643b30c496e'

  # dp100.com is the official download host per the vendor homepage
  url "http://gorilla.dp100.com/downloads/gorilla.mac.#{version.delete('.')}.zip"
  name 'Password Gorilla'
  homepage 'https://github.com/zdia/gorilla'
  license :gpl

  app 'Password Gorilla.app'

  caveats <<-EOS.undent
    Password Gorilla must be run in 32-bit mode.
    Gatekeeper may need to be temporarily disabled for the first launch.
  EOS
end
