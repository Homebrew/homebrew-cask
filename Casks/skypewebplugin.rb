cask "skypewebplugin" do
  version "7.32.6.278"
  sha256 "4cbbd3d933667967b78673b27eeb1e4044c3e8024123a63399797c7784b4ddd5"

  url "https://swx.cdn.skype.com/plugin/#{version}/SkypeWebPlugin.pkg"
  name "Skype Web Plugin"
  homepage "https://www.skype.com/"

  pkg "SkypeWebPlugin.pkg"

  uninstall pkgutil: "Skype.Client.Plugin"
end
