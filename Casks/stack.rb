cask :v1_1 => 'stack' do
  version '0.1.5.0'
  sha256 'fde34bcbe4f944621258784d98828522f2f0cf0f44cd8ca40c30c2a53486f08a'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-x86_64-osx.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}-x86_64-osx/stack"

  postflight do
    set_permissions "#{staged_path}/stack-#{version}", '+x'
  end

  depends_on :arch => :x86_64
end
