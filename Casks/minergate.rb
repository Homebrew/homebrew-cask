cask 'minergate' do
  version '7.2'
  sha256 '9e65d63c366fe7bd0093899d7a0e8082dfbcf05d4667f1a1ca7d0d72f0012be8'

  url "https://download.minergate.com/mac/#{version}"
  name 'MinerGate'
  homepage 'https://minergate.com/downloads/gui'

  app 'MinerGate.app'

  zap trash: [
               '~/Library/Application Support/minergate',
               '/Library/Logs/DiagnosticReports/minergate_*',
             ]
end
