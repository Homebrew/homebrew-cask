cask 'moonitor' do
  version '0.6.6'
  sha256 '2a0d59ea68f791ef27a5b0209d1abd43dc4a61c6bed70248a171497b9210d66e'

  url "https://moonitor.io/wp-content/uploads/app/Moonitor-#{version}.dmg"
  name 'Moonitor'
  homepage 'https://moonitor.io/'

  app 'Moonitor.app'
end
