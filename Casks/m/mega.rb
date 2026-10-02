cask "mega" do
  version "12.1.3"
  sha256 "92c0257845f960d0c383bcd27079d52f74c44c28759e333948b30f1db8fefaee"

  url "https://megasoftware.net/releases/MEGA_#{version}_installer.pkg"
  name "MEGA"
  name "Molecular Evolutionary Genetics Analysis"
  desc "Molecular evolution statistical analysis and construction of phylogenetic trees"
  homepage "https://megasoftware.net/"

  livecheck do
    url "https://www.megasoftware.net/current_release/",
        user_agent: :browser
    strategy :json do |json|
      json.map do |item|
        next if item["operating_system"] != "mac" ||
                item["release_type"] != "stable" ||
                !item["interface"].match?(/Graphical|GUI/i)

        major = item["major"]
        minor = item["minor"]
        release = item["release"]
        next if major.blank? || minor.blank? || release.blank?

        "#{major}.#{minor}.#{release}"
      end
    end
  end

  auto_updates true
  depends_on :macos

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
    "~/Library/Preferences/com.company.MEGA*",
    "~/Library/Saved Application State/com.company.MEGA*",
  ]
end
