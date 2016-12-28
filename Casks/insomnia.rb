cask 'insomnia' do
  version '4.0.12'
  sha256 'ab1a1817f7dbf7cbf170a54f8caa8737c8d7f3497072c813307e5cfa04c3f629'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
