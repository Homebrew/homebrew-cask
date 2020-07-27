cask "ghidra" do
  version "9.1.2_PUBLIC,20200212"
  sha256 "ebe3fa4e1afd7d97650990b27777bb78bd0427e8e70c1d0ee042aeb52decac61"

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_#{version.after_comma}.zip"
  name "Ghidra"
  homepage "https://www.ghidra-sre.org/"

  conflicts_with cask: "ghidra-beta"

  binary "ghidra_#{version.before_comma}/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
