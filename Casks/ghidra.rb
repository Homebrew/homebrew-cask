cask 'ghidra' do
  version '9.0.1_PUBLIC_20190325'
  sha256 '58ffa488e6dc57e2c023670c1dfac0469bdb6f4e7da98f70610d9f561b65c774'

  url "https://www.ghidra-sre.org/ghidra_#{version}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  binary "ghidra_#{version.major_minor_patch}/ghidraRun"

  zap trash: '~/.ghidra'

  caveats do
    depends_on_java '11+'
  end
end
