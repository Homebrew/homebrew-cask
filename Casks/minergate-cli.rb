cask 'minergate-cli' do
  version '4.04'
  sha256 'a65354d2fd910679e0c0bcd44e3a868266ef223487f5032a5e0978a87e804605'

  url "https://download.minergate.com/mac-cli/#{version}"
  name 'MinerGate CLI'
  homepage 'https://minergate.com/downloads/console'

  binary "MinerGate-cli-#{version}-Mac/minergate-cli"

  zap trash: '~/Library/Application Support/minergate-cli'
end
