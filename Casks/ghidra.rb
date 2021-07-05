cask "ghidra" do
  version "10.0,20210621"
  sha256 "aaf84d14fb059beda10de9056e013186601962b6f87cd31161aaac57698a0f11"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.before_comma}_build/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip",
      verified: "github.com/NationalSecurityAgency/ghidra/"
  name "Ghidra"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url "https://ghidra-sre.org/"
    strategy :page_match do |page|
      match = page.match(/href=.*?ghidra[._-](\d+(?:\.\d+)*)[._-]PUBLIC[._-](\d+)\.zip/i)
      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "homebrew/cask-versions/ghidra-beta"

  binary "ghidra_#{version.before_comma}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
