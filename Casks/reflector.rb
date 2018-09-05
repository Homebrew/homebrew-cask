cask 'reflector' do
  version '3.1.1'
  sha256 '0f1b79c091cd5964849c3e863b0ac911bed3cb4668496b4b552e0fa4f52ae9a5'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end
