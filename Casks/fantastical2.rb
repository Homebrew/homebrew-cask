cask :v1 => 'fantastical2' do
  version :latest
  sha256 :no_check

  url 'https://flexibits.com/fantastical/download'
  name 'Fantastical 2'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'
end
