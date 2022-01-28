cask "ghidra" do
  version "10.1.2,20220125"
  sha256 "ac96fbdde7f754e0eb9ed51db020e77208cdb12cf58c08657a2ab87cb2694940"

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

  conflicts_with cask: "homebrew/cask-versions/ghidra-beta"

  binary "ghidra_#{version.csv.first}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
