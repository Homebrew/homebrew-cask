cask "ghidra" do
  version "10.0.3,20210908"
  sha256 "1e1d363c18622b9477bddf0cc172ec55e56cac1416b332a5c53906a78eb87989"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.before_comma}_build/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip",
      verified: "github.com/NationalSecurityAgency/ghidra/"
  name "Ghidra"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url "https://github.com/NationalSecurityAgency/ghidra/releases/latest"
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
