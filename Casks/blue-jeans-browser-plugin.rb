cask "blue-jeans-browser-plugin" do
  version "2.135.54.8"
  sha256 "e36f3c1fe6410ac22dd50fcdcc45e61e9cf7a0043662ee3c2521978ba9996a23"

  url "https://swdl.bluejeans.com/skinny/rbjnplugin_#{version}.pkg"
  name "Blue Jeans Browser Plug-in"
  homepage "https://www.bluejeans.com/"

  container type:   :xar,
            nested: "Scripts"

  internet_plugin "rbjninstallplugin_#{version}.plugin"
  internet_plugin "rbjnplugin_#{version}.plugin"
end
