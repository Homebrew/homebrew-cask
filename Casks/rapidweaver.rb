cask 'rapidweaver' do
  version '8.6.1,20831'
  sha256 '7d5f1d8a3f71bcfdbb5ad15eb733d2b4173e37237571020212ee204811fa1d08'

  # github.com/realmacsoftware/ was verified as official when first introduced to the cask
  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
