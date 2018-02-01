cask 'objectivesharpie' do
  version :latest
  sha256 :no_check

  url 'https://dl.xamarin.com/objective-sharpie/ObjectiveSharpie.pkg'
  name 'Objective Sharpie'
  homepage 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/'

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.ObjectiveSharpie'
end
