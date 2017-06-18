cask 'mruby-cli' do
  version '0.0.4'
  sha256 'e78be1c039085d0024fd8337ec40328cb1d64b7251357ec5ae8c680d9b27de8d'

  url "https://github.com/hone/mruby-cli/releases/download/v#{version}/mruby-cli-#{version}-x86_64-apple-darwin14.tgz"
  appcast 'https://github.com/hone/mruby-cli/releases.atom',
          checkpoint: '576fb78542078a5060ad42f8c9db9278a0aadb9c7ce3d9757707b95ebca0c0fa'
  name 'mruby-cli'
  homepage 'https://github.com/hone/mruby-cli/'

  binary 'mruby-cli'
end
