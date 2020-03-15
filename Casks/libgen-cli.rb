cask 'libgen-cli' do
  version '1.0.5'
  sha256 '835c8c8776e175485403f5fd64a871526831504dde40080957f85e316b560b1b'

  url "https://github.com/ciehanski/libgen-cli/releases/download/v#{version}/libgen-cli-v#{version}-darwin"
  appcast 'https://github.com/ciehanski/libgen-cli/releases.atom'
  name 'libgen-cli'
  homepage 'https://github.com/ciehanski/libgen-cli'

  binary "libgen-cli-v#{version}-darwin", target: 'libgen'
end
