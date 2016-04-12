cask 'paw' do
  version '2.3.3'
  sha256 '96b035293b7f98dbff25e2bcb3d1213ad5f948c1a1a51eeac6bccd88e4b941fa'

  url "https://luckymarmot.com/paw/download/#{version}"
  appcast "https://luckymarmot.com/api/v#{version.major}/updates/appcast",
          checkpoint: '862b9ff96f57a35d461ead231ef14330585666c36f7eb73354a3ba357fad9b80'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
