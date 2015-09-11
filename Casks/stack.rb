cask :v1_1 => 'stack' do
  version '0.1.3.1'
  sha256 'd13b3927e1385d63c0a43bddb5370ef70daab293ddacd4d0f167493f00392fe8'

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
