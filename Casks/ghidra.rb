cask 'ghidra' do
  version '9.1.1_PUBLIC,20191218'
  sha256 'b0d40a4497c66011084e4a639d61ac76da4b4c5cabd62ab63adadb7293b0e506'

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
