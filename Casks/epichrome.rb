cask "epichrome" do
  version "2.4.23"
  sha256 "6efdde58075468d2aa66fe8b3fb7248af2118c8849f774362e883e656c83bcbc"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
