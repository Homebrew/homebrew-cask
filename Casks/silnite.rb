cask "silnite" do
  version "5,2020.08"
  sha256 "bd4a314918710af6a2eaeccb8dbf26724b5075a178118f33a719161af697eb7c"

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/silnite#{version.before_comma}.zip"
  name "silnite"
  desc "Checks EFI firmware and security data file updates"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  depends_on macos: ">= :el_capitan"

  pkg "silnite#{version.before_comma}/silniteInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.silniteInstaller"
end
