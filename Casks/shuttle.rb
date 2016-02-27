cask 'shuttle' do
  version '1.2.6'
  sha256 '7b54529cd00332e423839cf768b732ac6c42e17de9325d0a093764180deeb611'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: 'c3dea2ed479b3ebba7c56ace6040901795f6dc6be92f9ffc30cc808d31723f17'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap delete: '~/.shuttle.json'
end
