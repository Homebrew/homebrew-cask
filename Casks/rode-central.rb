cask "rode-central" do
  version "1.3.6"
  sha256 :no_check

  url "https://rode.com/software/rode-central/get_download?os=mac"
  name "rode-central.rb"
  desc "Configure RØDE device settings, features, functions, and firmware"
  homepage "https://rode.com/software/rode-central"

  pkg "RODE Central macOS v#{version}/RODE Central Installer.pkg"

  uninstall pkgutil: "com.rodecentral.installer"
end
