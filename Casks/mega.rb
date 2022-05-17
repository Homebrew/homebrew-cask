cask "mega" do
  version "11.0.11"
  sha256 "0bdc3ed14bd73d3bbaea28044ab593a33c7f0ce1e477cf754a774095f3ba9c1c"

  url "https://megasoftware.net/do_force_download/MEGA_#{version}_installer.pkg"
  name "MEGA"
  name "Molecular Evolutionary Genetics Analysis"
  desc "Molecular evolution statistical analysis and construction of phylogenetic trees"
  homepage "https://megasoftware.net/"

  livecheck do
    url "https://megasoftware.net/history"
    regex(/MEGA\s\d+\sversion\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "MEGA_#{version}_installer.pkg"

  uninstall quit:    "com.company.MEGA#{version.major}",
            pkgutil: "com.igem.pkg.MEGA#{version.major}",
            delete:  [
              "/Applications/MEGA#{version.major}.app",
              "/usr/local/bin/megacc",
              "/usr/local/share/man/man1/mega.1",
              "/usr/local/share/man/man1/megacc.1",
            ]

  zap trash: [
    "~/Library/Preferences/com.company.MEGA#{version.major} Helper.plist",
    "~/Library/Preferences/com.company.MEGA#{version.major}.plist",
    "~/Library/Saved Application State/com.company.MEGA#{version.major}.savedState",
  ]
end
