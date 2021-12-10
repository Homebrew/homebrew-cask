cask "ghidra" do
  version "10.1,20211210"
  sha256 "99139c4a63a81135b3b63fe9997a012a6394a766c2c7f2ac5115ab53912d2a6c"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.before_comma}_build/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip",
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

  binary "ghidra_#{version.before_comma}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
