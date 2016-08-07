cask 'happygrep' do
  version '1.0'
  sha256 '05c5f33142c9ea4559b20ca421c76fa0b081ae3edc0d6e3b8f7c3dd8ba21a518'

  url "https://github.com/happypeter/happygrep/releases/download/v#{version}/happygrep.zip"
  appcast 'https://github.com/happypeter/happygrep/releases.atom',
          checkpoint: 'dd376ec81022a1df74322c83907d48ce2c8430da66cc9becc72a9c808ae1aae8'
  name 'happygrep'
  homepage 'https://github.com/happypeter/happygrep'
  license :mit

  binary 'happygrep'
end
