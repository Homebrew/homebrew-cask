cask "megax" do
  version "10.2.4"
  sha256 "d9295361cc2482e82ef44137aaca2aa8b94fd9b27e703766c542b0ec0d8a0bc4"

  url "https://megasoftware.net/releases/MEGAX_#{version}_installer.pkg"
  name "MEGA"
  name "Molecular Evolutionary Genetics Analysis"
  desc "Molecular evolution statistical analysis and construction of phylogenetic trees"
  homepage "https://megasoftware.net/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "MEGAX_#{version}_installer.pkg"

  uninstall quit:    "com.company.MEGAX",
            pkgutil: "com.igem.pkg.MEGAX",
            delete:  [
              "/Applications/MEGAX.app",
              "/usr/local/bin/megacc",
              "/usr/local/share/man/man1/megax.1",
              "/usr/local/share/man/man1/megacc.1",
            ]

  zap trash: [
    "~/Library/Preferences/com.company.MEGAX Helper.plist",
    "~/Library/Preferences/com.company.MEGAX.plist",
    "~/Library/Saved Application State/com.company.MEGAX.savedState",
  ]
end
