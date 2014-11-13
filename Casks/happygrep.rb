cask :v1 => 'happygrep' do
  version '1.0'
  sha256 '05c5f33142c9ea4559b20ca421c76fa0b081ae3edc0d6e3b8f7c3dd8ba21a518'

  url "https://github.com/happypeter/happygrep/releases/download/v#{version}/happygrep.zip"
  homepage 'https://github.com/happypeter/happygrep'
  license :oss

  binary 'happygrep'
end
