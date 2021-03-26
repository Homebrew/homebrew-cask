cask "epichrome" do
  version "2.4.1"
  sha256 "d5ebe9f064c359db4d7939ab442c23016aead40c5f08eb4c90b17211fc60ee8a"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
