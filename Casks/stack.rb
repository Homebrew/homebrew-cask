cask :v1 => 'stack' do
  version '0.1.2.0'
  sha256 '6e1039d9c5144fb03dbfb1f569a830724593191305998e9be87579d985feb36c'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-x86_64-osx.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}", :target => 'stack'

  postflight do
    set_permissions "#{staged_path}/stack-#{version}", '+x'
  end

  depends_on :arch => :x86_64
end
