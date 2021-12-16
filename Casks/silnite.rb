cask "silnite" do
  version "6,2021.12"
  sha256 "932117c39f351e6933f295a52b222cde4bf18d3a069dadc9bd5cffc4caab965a"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/silnite#{version.before_comma}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "silnite"
  desc "Checks EFI firmware and security data file updates"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  depends_on macos: ">= :el_capitan"

  pkg "silnite#{version.before_comma}/silniteInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.silniteInstaller"
end
