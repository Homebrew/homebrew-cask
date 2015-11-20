cask :v1 => 'black-ink' do
  version '1.6.3'
  sha256 '87b60a5d2ddec03e4c9c8506949abd0eb5391ca3f8cc1d29291e1899f1399857'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          :sha256 => 'fe0c414719fdc867a4ca331304f76577c198d170ae30e14600cf01fd42997872'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
