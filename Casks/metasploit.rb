cask "metasploit" do
  version "6.1.35,20220318102931"
  sha256 "8140d714f4834678983fd4db47f52b806254d346f65ee7334532aa0a9dfcdc41"

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
