cask :v1 => 'infer' do
  version '0.2.0'
  sha256 'ef755c3f01ae3246cae8f67a914518cdff72d69d55172a45242ef11e2c62812f'

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
