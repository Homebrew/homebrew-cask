cask "feem" do
  version "4.4.2"
  sha256 "5d5b36a31ad6f656cc36e5c014c1b93d3387d0a1c0313fd7db9d242b47203302"

  url "https://f000.backblazeb2.com/file/feemdownloads/Feem_Mac_#{version}_beta_Installer.pkg",
      verified: "f000.backblazeb2.com/file/feemdownloads/"
  name "Feem"
  desc "Local file transfer"
  homepage "https://feem.io/"

  deprecate! date: "2024-05-17", because: :moved_to_mas
  disable! date: "2025-05-17", because: :moved_to_mas

  pkg "Feem_Mac_#{version}_beta_Installer.pkg"

  uninstall quit:    "com.feeperfect.airsend.mac",
            pkgutil: "com.feeperfect.airsend.mac"
end
