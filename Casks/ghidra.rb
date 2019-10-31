cask 'ghidra' do
  version '9.1_PUBLIC_20191023'
  sha256 '29d130dfe85da6ec45dfbf68a344506a8fdcc7cfe7f64a3e7ffb210052d1875e'

  url "https://www.ghidra-sre.org/ghidra_#{version}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  binary "ghidra_#{version.major_minor_patch}_PUBLIC/ghidraRun"

  zap trash: '~/.ghidra'

  caveats do
    depends_on_java '11+'
  end
end
