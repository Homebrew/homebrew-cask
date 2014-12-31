cask :v1 => 'sloth' do
  version '1.5'
  sha256 '01f8f9fec88d5bc0cb0edcf7391d5ed0ac085f7fa8dcb6682059a238d7786165'

  url 'http://sveinbjorn.org/files/software/sloth.zip'
  homepage 'http://sveinbjorn.org/sloth'
  license :gpl

  app "Sloth-#{version}/Sloth.app"
end
