cask :v1 => 'postico' do
  version '0.24'
  sha256 '9628701be37ede0c41bcd95d75a137a5a95bafee9eb0df17577e83c9ca598487'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
