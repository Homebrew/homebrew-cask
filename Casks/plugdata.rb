# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "plugdata" do
  version "0.6.1"
  sha256 "b39f902d375d52b58714f3f8c5c07abef688668bf2608a03f5372dc27532b1d7"
  url "https://github.com/timothyschoen/PlugData/releases/download/v#{version}/PlugData-MacOS-Universal.zip"
  name "PlugData"
  desc "Pure Data as a plugin, with a new GUI"
  homepage "https://github.com/timothyschoen/PlugData"
  
  livecheck do
    url :url
    strategy :github_latest
  end
  
  auto_updates true

  pkg "PlugData-MacOS-Universal.pkg"
  
  uninstall pkgutil: [
    "com.Octagon.app.pkg.PlugData",
    "com.Octagon.lv2.pkg.PlugData",
    "com.Octagon.au.pkg.PlugData",
    "com.Octagon.vst3.pkg.PlugData"    
  ]
  
end
