cask 'ghidra' do
  version '9.0.4_PUBLIC_20190516'
  sha256 'a50d0cd475d9377332811eeae66e94bdc9e7d88e58477c527e9c6b78caec18bf'

  url "https://www.ghidra-sre.org/ghidra_#{version}.zip"
  name 'Ghidra'
  homepage 'https://www.ghidra-sre.org/'

  binary "ghidra_#{version.major_minor_patch}/ghidraRun"

  zap trash: '~/.ghidra'

  caveats do
    depends_on_java '11+'
  end
end
