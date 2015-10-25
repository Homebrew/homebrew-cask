cask :v1 => 'postico' do
  version '0.28'
  sha256 '42d5247cb9d8757bf0e5f7f5a523dc5474b8ed76a36e1a0a0b36229f06639c83'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mavericks'
end
