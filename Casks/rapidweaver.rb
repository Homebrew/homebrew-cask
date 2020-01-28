cask 'rapidweaver' do
  version '8.5.1,20823'
  sha256 '0682646a5ca558bb2abd41be5c8104a1c7f98e77226c77c69797b5bbc4412cd8'

  # github.com/realmacsoftware was verified as official when first introduced to the cask
  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
