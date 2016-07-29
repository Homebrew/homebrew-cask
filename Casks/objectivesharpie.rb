cask 'objectivesharpie' do
  version '3.0.8'
  sha256 'f5deb879d0f5f379eb5ccc6d78bedf99007386d102720639cf7a5f3dc8be04cc'

  url "https://files.xamarin.com/~abock/ObjectiveSharpie/ObjectiveSharpie-#{version}.pkg"
  name 'Objective Sharpie'
  homepage 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.ObjectiveSharpie'
end
