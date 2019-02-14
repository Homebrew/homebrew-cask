cask 'rapidweaver' do
  version '8.1.4,20642.1549903837'
  sha256 '73c6da08e198569ff07fb1d0d6e2cbb532d51e10616f7b31a9b890f102eb8d11'

  # devmate.com/com.realmacsoftware.rapidweaver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/#{version.after_comma.major}/#{version.after_comma.minor}/RapidWeaver#{version.major}-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml"
  name 'RapidWeaver'
  homepage 'https://www.realmacsoftware.com/rapidweaver/'

  depends_on macos: '>= :sierra'

  app "RapidWeaver #{version.major}.app"
end
