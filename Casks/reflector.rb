cask 'reflector' do
  version '2.7.2'
  sha256 'a7b18caa4ae4bcb5a695037d3855d1fcb127c4c573b3b6c628f4631574ffa97e'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml",
          checkpoint: '38ab599bebca2d67ec695ac14440cfb62e9dddefe81b8f4cdf07d931c2851f65'
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end
