cask 'gemini' do
  version '2.4.5,1527862199'
  sha256 '946fe1bc126641d4b39ae18c525c50f0cbe5f8a8b2e87da29a18a979c8b906d6'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.before_comma}/#{version.after_comma}/Gemini#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: 'a579b65d8f28ac827b0d8e3d2163391c51cd91316403860a6df96bdd582bfc0a'
  name 'Gemini'
  homepage 'https://macpaw.com/gemini'

  app "Gemini #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Gemini 2',
               '~/Library/Caches/com.macpaw.site.Gemini2',
               '~/Library/Preferences/com.macpaw.site.Gemini2.plist',
               '~/Library/Saved Application State/com.macpaw.site.Gemini2.savedState',
             ]
end
