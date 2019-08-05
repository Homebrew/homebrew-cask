cask 'sshcode' do
  version '0.8.0'
  sha256 '023d47106bc11d1c35a868b4590c71975745b8f6c4a4b32d556095eaa2ef5f35'

  url "https://github.com/cdr/sshcode/releases/download/v#{version}/sshcode-darwin-amd64.tar"
  appcast 'https://github.com/cdr/sshcode/releases.atom'
  name 'sshcode'
  homepage 'https://github.com/cdr/sshcode'

  binary 'sshcode'
end
