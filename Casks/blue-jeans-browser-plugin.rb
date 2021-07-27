cask "blue-jeans-browser-plugin" do
  version "2.180.71.8"
  sha256 "bbf0f274895a23faaad40b08df2fda3465be4b97f24e599bc8e81a438df32ad0"

  url "https://swdl.bluejeans.com/skinny/rbjnplugin_#{version}.pkg"
  name "Blue Jeans Browser Plug-in"
  homepage "https://www.bluejeans.com/"

  livecheck do
    url "https://swdl.bluejeans.com/repos/bluejeans/x86_64/release/rpm"
    regex(/href=.*?r?bjnplugin[._-]?v?(\d+(?:\.\d+)*)(?:[._-]1)?[._-]x86/i)
  end

  container type:   :xar,
            nested: "Scripts"

  internet_plugin "rbjninstallplugin_#{version}.plugin"
  internet_plugin "rbjnplugin_#{version}.plugin"
end
