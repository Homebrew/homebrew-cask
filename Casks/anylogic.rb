cask :v1 => 'anylogic' do
  version '7.1.2'
  sha256 'ff1a3ded5529bb7740227efaa300f60a993fa0858f698b0ad0fdc503a062b7b0'

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
