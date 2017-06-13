cask 'nocturn' do
  version '1.5.1'
  sha256 'f5139c52bc73a9fb30d3f63b0d42ca6f65612954d065a62663b2a117b4bb354a'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '5f5a4d6bd9a59896b410d2b57489324a2bae3247ecf99b4c4176314d7f45081e'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
