cask 'ghidra' do
  version '9.1_PUBLIC,20191023'
  sha256 '29d130dfe85da6ec45dfbf68a344506a8fdcc7cfe7f64a3e7ffb210052d1875e'

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_#{version.after_comma}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  conflicts_with cask: 'ghidra-beta'

  binary "ghidra_#{version.before_comma}/ghidraRun"

  zap trash: '~/.ghidra'

  caveats do
    depends_on_java '11+'
  end
end
