cask "ghidra" do
  version "9.2.4,20210427"
  sha256 "c1f18cdb12e2e1c0313e7becf7f0387226937ac67ad6c6e5056fa889229f969a"

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip"
  name "Ghidra"
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
