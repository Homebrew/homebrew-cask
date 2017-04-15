cask 'reflector' do
  version '2.7.0'
  sha256 '27835dba9aa2ab2d5e0fb3d89c91554596a11d43473e9443c6b3eb6632e6af46'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml",
          checkpoint: '7df3d44e44a3775e62c2d8da8fd9488b1a6c65e3a62cb8491c6e37bc34e05848'
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end
