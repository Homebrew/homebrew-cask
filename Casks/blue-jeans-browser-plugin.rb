cask 'blue-jeans-browser-plugin' do
  version '2.115.99.8'
  sha256 '2a367b63a7d18b2249472179d10e8a51ed3b5c76241513e9397560ecc8065825'

  url "https://swdl.bluejeans.com/skinny/rbjnplugin_#{version}.pkg"
  name 'Blue Jeans Browser Plug-in'
  homepage 'https://bluejeans.com/'
  license :gratis

  container type:   :xar,
            nested: 'Scripts'

  internet_plugin "rbjninstallplugin_#{version}.plugin"
  internet_plugin "rbjnplugin_#{version}.plugin"
end
