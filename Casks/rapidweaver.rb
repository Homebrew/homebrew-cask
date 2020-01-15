cask 'rapidweaver' do
  version '8.5,20821'
  sha256 'f8d6f6973a5ec070f7bbe12d15ecc2ba8df4979c5f7390babb9be12861420a47'

  # github.com/realmacsoftware was verified as official when first introduced to the cask
  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
