cask "metasploit" do
  version "6.0.28,20210124113034"
  sha256 "0b4968a0d02242f3dfd6c11495921e823efeb3b1cd8f0f3769bef959379d74a5"

  url "https://osx.metasploit.com/metasploit-framework-#{version.before_comma}%2B#{version.after_comma}-1rapid7-1.pkg"
  appcast "https://osx.metasploit.com/LATEST"
  name "Metasploit Framework"
  desc "Penetration testing framework"
  homepage "https://www.metasploit.com/"

  depends_on formula: "nmap"

  pkg "metasploit-framework-#{version.before_comma}+#{version.after_comma}-1rapid7-1.pkg"
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
