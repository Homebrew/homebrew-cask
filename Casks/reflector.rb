cask 'reflector' do
  version '3.0.2'
  sha256 '52b11529455e014aba83a5a683aa64a5c65fba873f27a7766a0a2182f93547df'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml",
          checkpoint: 'dbd337002b4eeb9d63cf4a12c6b63c8ed94dddf2787975e5281b684610777e5e'
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end
