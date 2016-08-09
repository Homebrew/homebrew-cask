cask 'feeder' do
  version '3.2.7'
  sha256 'e1175e425b60af830dabc30b1923d6bd844b7f52e5e971809fedfcb02ba7586d'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: 'e8125736c26ef1db310690d46d8175669df40845336d3e5f063d8f333d8f990d'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
