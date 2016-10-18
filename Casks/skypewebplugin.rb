cask 'skypewebplugin' do
  version '7.26.0.48'
  sha256 'd4431cf80a73a5182de0b66de2a69365df4c8148048bdf17a92c3abccf678a04'

  url "https://swx.cdn.skype.com/plugin/#{version}/SkypeWebPlugin.pkg"
  name 'Skype Web Plugin'
  homepage 'https://skype.com'

  pkg 'SkypeWebPlugin.pkg'

  uninstall pkgutil: 'Skype.Client.Plugin'
end
