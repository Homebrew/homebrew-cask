cask "ghidra" do
  version "9.2,20201113"
  sha256 "ffebd3d87bc7c6d9ae1766dd3293d1fdab3232a99b170f8ea8b57497a1704ff6"

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
