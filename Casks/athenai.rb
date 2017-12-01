cask 'athenai' do
  version '0.2.0'
  sha256 '90a0806047f42a1fdae80f534779f42174999b73546ab03dceefcd7c3ee9e0c4'

  url "https://github.com/skatsuta/athenai/releases/download/#{version}/athenai_macOS_64-bit.tar.gz"
  name 'Amazon Athena from command line'
  homepage 'https://github.com/skatsuta/athenai'

  binary 'athenai'
end
