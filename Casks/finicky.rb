cask :v1 => 'finicky' do
  version '0.3'
  sha256 :no_check

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'
  license :mit

  app 'Finicky.app'
end
