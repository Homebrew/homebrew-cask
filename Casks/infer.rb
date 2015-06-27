cask :v1 => 'infer' do
  version '0.1.1'
  sha256 '1eb8c9b047b6940464bb79adacd752382b939b2c24c2963fa1072765c22907d0'

  url "https://github.com/facebook/infer/releases/download/v#{version}/infer-osx-v#{version}.tar.xz"
  appcast 'https://github.com/facebook/infer/releases.atom'
  name 'infer'
  homepage 'http://fbinfer.com/'
  license :bsd

  binary "infer-osx-v#{version}/infer/infer/bin/BuckAnalyze"
  binary "infer-osx-v#{version}/infer/infer/bin/InferAnalyze"
  binary "infer-osx-v#{version}/infer/infer/bin/InferClang"
  binary "infer-osx-v#{version}/infer/infer/bin/InferJava"
  binary "infer-osx-v#{version}/infer/infer/bin/InferPrint"
  binary "infer-osx-v#{version}/infer/infer/bin/infer"
  binary "infer-osx-v#{version}/infer/infer/bin/inferJ"
  binary "infer-osx-v#{version}/infer/infer/bin/inferTest"
  binary "infer-osx-v#{version}/infer/infer/bin/inferTraceBugs"
  binary "infer-osx-v#{version}/infer/infer/bin/inferlib.py"
  binary "infer-osx-v#{version}/infer/infer/bin/jwlib.py"
  binary "infer-osx-v#{version}/infer/infer/bin/utils.py"
end
