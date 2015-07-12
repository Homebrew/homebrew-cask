cask :v1 => 'postico' do
  version '0.25'
  sha256 '91b523dc5657d5f9f32438c4176442c80504d54930aa1e73ed3ae3f08d5dbbc0'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
