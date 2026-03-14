cask "metasploit" do
  version "6.4.123,20260314055557"
  sha256 "a05de4b43bad120b6c7206814a658960675c36bcefee0135d51ec380bcceb1d5"

  url "https://osx.metasploit.com/metasploit-framework-#{version.csv.first}-#{version.csv.second}-1rapid7-1.x86_64.pkg"
  name "Metasploit Framework"
  desc "Penetration testing framework"
  homepage "https://www.metasploit.com/"

  livecheck do
    url "https://osx.metasploit.com/LATEST"
    regex(/metasploit[._-]framework[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:\.git\.\d+\.\h+)?).*\.pkg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on formula: "nmap"

  pkg "metasploit-framework-#{version.csv.first}-#{version.csv.second}-1rapid7-1.x86_64.pkg"
  binary "/opt/metasploit-framework/bin/msfbinscan"
  binary "/opt/metasploit-framework/bin/msfconsole"
  binary "/opt/metasploit-framework/bin/msfd"
  binary "/opt/metasploit-framework/bin/msfdb"
  binary "/opt/metasploit-framework/bin/msfelfscan"
  binary "/opt/metasploit-framework/bin/msfmachscan"
  binary "/opt/metasploit-framework/bin/msfpescan"
  binary "/opt/metasploit-framework/bin/msfrop"
  binary "/opt/metasploit-framework/bin/msfrpc"
  binary "/opt/metasploit-framework/bin/msfrpcd"
  binary "/opt/metasploit-framework/bin/msfvenom"

  uninstall script: {
              executable: "/opt/metasploit-framework/bin/msfremove",
              input:      ["y"],
              sudo:       true,
            },
            rmdir:  "/opt/metasploit-framework"

  zap trash: "~/.msf4"

  caveats do
    requires_rosetta
  end
end
