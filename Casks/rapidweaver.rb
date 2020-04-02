cask 'rapidweaver' do
  version '8.6,20829'
  sha256 'b76ca9c1fd7614b5a72b5556ce3371cc91a5d7b27ab278d3a0e02b00187c463f'

  # github.com/realmacsoftware was verified as official when first introduced to the cask
  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
