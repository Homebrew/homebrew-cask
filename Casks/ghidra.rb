cask 'ghidra' do
  version '9.0_PUBLIC_20190228'
  sha256 '3b65d29024b9decdbb1148b12fe87bcb7f3a6a56ff38475f5dc9dd1cfc7fd6b2'

  url "https://www.ghidra-sre.org/ghidra_#{version}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  depends_on cask: 'java'

  binary "ghidra_#{version.major_minor}/ghidraRun"

  zap trash: [
               '~/.ghidra',
             ]

  caveats do
    depends_on_java '11+'
  end
end
