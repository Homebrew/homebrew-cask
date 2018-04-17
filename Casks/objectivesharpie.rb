cask 'objectivesharpie' do
  version '3.4.0'
  sha256 '4b4a9840f998f37709fb8c11dcd65c77a02872562d306540818b453a4ea9911b'

  url "https://download.xamarin.com/objective-sharpie/ObjectiveSharpie-#{version}.pkg"
  name 'Objective Sharpie'
  homepage 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/'

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.ObjectiveSharpie'
end
