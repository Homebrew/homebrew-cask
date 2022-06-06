cask "ghidra" do
  version "10.1.4,20220519"
  sha256 "91556c77c7b00f376ca101a6026c0d079efbf24a35b09daaf80bda897318c1f1"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.csv.first}_build/ghidra_#{version.csv.first}_PUBLIC_#{version.csv.second}.zip",
      verified: "github.com/NationalSecurityAgency/ghidra/"
  name "Ghidra"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url "https://github.com/NationalSecurityAgency/ghidra/releases"
    strategy :page_match do |page|
      page.scan(/href=.*?ghidra[._-]v?(\d+(?:\.\d+)+)[._-]PUBLIC[._-](\d+)\.zip/i)
          .map { |matches| "#{matches[0]},#{matches[1]}" }
    end
  end

  binary "#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/ghidraRun"

  preflight do
    # Log4j misinterprets comma in staged_path as alternative delimiter
    FileUtils.mv(staged_path, "#{caskroom_path}/#{version.csv.first}-#{version.csv.second}")
  end

  uninstall_preflight do
    FileUtils.mv("#{caskroom_path}/#{version.csv.first}-#{version.csv.second}", staged_path)
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
