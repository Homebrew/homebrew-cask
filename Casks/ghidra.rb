cask "ghidra" do
  version "9.2.3,20210325"
  sha256 "9019c78f8b38d68fd40908b040466974a370e26ba51b2aaeafc744171040f714"

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip"
  name "Ghidra"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url "https://ghidra-sre.org/"
    regex(/href="ghidra[._-](\d+\.\d+\.\d+)_PUBLIC_(\d+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second}" }
    end
  end

  conflicts_with cask: "homebrew/cask-versions/ghidra-beta"

  binary "ghidra_#{version.before_comma}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
