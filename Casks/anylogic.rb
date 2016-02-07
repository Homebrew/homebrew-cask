cask 'anylogic' do
  version '7.2.0'
  sha256 '49a8274cb0cf2150d3f504660060ef279fe838c1a903538268b2e442a7969265'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'http://www.anylogic.com'
  license :gratis

  depends_on arch: :x86_64
  depends_on macos: '>= :lion'

  pkg 'Install AnyLogic.pkg'

  uninstall pkgutil: 'com.anylogic.AnyLogic'

  caveats do
    depends_on_java('8')

    <<-EOS.undent
      For activation instructions, check up on
        http://www.anylogic.com/upload/activation-guides/AnyLogic_#{version.slice(%r{\w+})}_PLE_License.pdf
    EOS
  end
end
