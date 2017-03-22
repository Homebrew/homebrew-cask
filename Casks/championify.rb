cask 'championify' do
  version '2.0.4'
  sha256 '9209be663ef541b49012356c2797b6b499235fa3ec1ee27d2eaa0f47cbfe6a64'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: 'abac4f5d49633034571c75bf18900ad2df0197de54eebab5ef4a0afcc6fd33c6'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
