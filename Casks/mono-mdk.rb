class MonoMdk < Cask
  version '3.4.0.185'
  sha256 '39c36f322a69e559461622a98e859f304a8611421ce394322723261ad902c17e'

  url 'http://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-3.4.0.185.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com/'

  install 'MonoFramework-MDK-3.4.0.185.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
