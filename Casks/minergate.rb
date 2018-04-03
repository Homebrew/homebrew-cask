cask 'minergate' do
  version '8.0'
  sha256 '2211c1be48c09225dcd27e6223a8243d40334932951fba6257e53220a55afbe7'

  url "https://download.minergate.com/mac/#{version}"
  name 'MinerGate'
  homepage 'https://minergate.com/downloads/gui'

  app 'MinerGate.app'

  zap trash: [
               '~/Library/Application Support/minergate',
               '/Library/Logs/DiagnosticReports/minergate_*',
             ]
end
