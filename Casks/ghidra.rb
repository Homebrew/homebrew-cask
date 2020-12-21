cask "ghidra" do
  version "9.2.1,20201215"
  sha256 "cfaeb2b5938dec90388e936f63600ad345d41b509ffed4727142ba9ed44cb5e8"

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_PUBLIC_#{version.after_comma}.zip"
  name "Ghidra"
  homepage "https://www.ghidra-sre.org/"

  conflicts_with cask: "ghidra-beta"

  binary "ghidra_#{version.before_comma}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
