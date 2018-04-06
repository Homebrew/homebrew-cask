cask 'minergate' do
  version :latest
  sha256 :no_check

  url 'https://download.minergate.com/mac'
  name 'MinerGate'
  homepage 'https://minergate.com/downloads/gui'

  app 'MinerGate.app'

  zap trash: [
               '~/Library/Application Support/minergate',
               '/Library/Logs/DiagnosticReports/minergate_*',
             ]
end
