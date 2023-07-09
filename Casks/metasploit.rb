cask "metasploit" do
  version "6.3.25,20230708103020"
  sha256 "eebe59997d34353e2bb8aff60072a3c7fda7f7d1b510f5c533f928693de6b9c6"

  url "https://osx.metasploit.com/metasploit-framework-#{version.csv.first}%2B#{version.csv.second}-1rapid7-1.x86_64.pkg"
  name "Metasploit Framework"
  desc "Penetration testing framework"
  homepage "https://www.metasploit.com/"

  livecheck do
    url "https://osx.metasploit.com/LATEST"
    strategy :page_match do |page|
      match = page.match(/metasploit-framework-(\d+(?:\.\d+)+)\+(\d+)-1rapid7-1\.x86_64\.pkg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on formula: "nmap"

  pkg "metasploit-framework-#{version.csv.first}+#{version.csv.second}-1rapid7-1.x86_64.pkg"
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
end
