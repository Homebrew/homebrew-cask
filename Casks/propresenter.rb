cask 'propresenter' do
  version '6.0.15_b15083'
  sha256 '11ef19e3fe13455471882f7741935ebdc0ee3582029503e862636d275a15ac31'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'e0437efdf3d833716cee18707b31fcc43e263a0ec8d9c41677fffad8e9987b92'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
