cask 'nteract' do
  version '0.3.4'
  sha256 '64b9d371bf32462875d8d4f1d5bdff6ffbf68094e6103070e04804dd6791f46e'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'f547e8e44e21404de07be14f9df631b8f86b61def4b3eb204d7538710affa228'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
