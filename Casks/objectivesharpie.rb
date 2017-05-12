cask 'objectivesharpie' do
  version '3.3.0'
  sha256 'a3f0b65895e55fa7628e3727772bed99fa7713cc059b716d3f30266b9b18ce0f'

  url "https://download.xamarin.com/objective-sharpie/ObjectiveSharpie-#{version}.pkg"
  appcast 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/releases/',
          checkpoint: '7a7dee3899648ea6ed857bde3d9e06e2b17114b52a83d66d36c47f1264a7eaa9'
  name 'Objective Sharpie'
  homepage 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/'

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.ObjectiveSharpie'
end
