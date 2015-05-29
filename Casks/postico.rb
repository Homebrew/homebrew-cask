cask :v1 => 'postico' do
  version '0.22'
  sha256 '9e96c86973340cbac2247387201e111dc83d93b13eec4efe3b091e14a7e975d3'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
