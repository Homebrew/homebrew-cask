cask "silnite" do
  version "5"
  sha256 "bd4a314918710af6a2eaeccb8dbf26724b5075a178118f33a719161af697eb7c"

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/2020/08/silnite5.zip"
  name "silnite"
  desc "Checks EFI firmware and security data file updates"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  pkg "silnite5/silniteInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.silniteInstaller"
end
