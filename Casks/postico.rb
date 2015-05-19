cask :v1 => 'postico' do
  version '0.21'
  sha256 'e8d9f0674dd7ba03262637118713e7a8d58e1544a9eb756cf365e6bb434a41e1'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
