cask 'ghidra' do
  version '9.0.2_PUBLIC_20190403'
  sha256 '10ffd65c266e9f5b631c8ed96786c41ef30e2de939c3c42770573bb3548f8e9f'

  url "https://www.ghidra-sre.org/ghidra_#{version}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  binary "ghidra_#{version.major_minor_patch}/ghidraRun"

  zap trash: '~/.ghidra'

  caveats do
    depends_on_java '11+'
  end
end
