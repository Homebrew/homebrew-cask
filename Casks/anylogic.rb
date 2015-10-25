cask :v1 => 'anylogic' do
  version '7.2.0'
  sha256 'b773e7a00d562e2f9c9aa93ade1bbecdf76d33c0fd9007fdb4eb7e1cd2c431bd'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'http://www.anylogic.com'
  license :gratis

  depends_on :arch => :x86_64
  depends_on :macos => '>= :lion'

  pkg 'Install AnyLogic.pkg'
  uninstall :pkgutil => 'com.anylogic.AnyLogic'

  caveats <<-EOS.undent
    AnyLogic #{version.to_i} requires Java 8. You can install the latest Java using
      brew cask install java

    For activation instructions, check up on
      http://www.anylogic.com/upload/activation-guides/AnyLogic_#{version.slice(/\w+/)}_PLE_License.pdf
  EOS

end
