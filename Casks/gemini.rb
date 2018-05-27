cask 'gemini' do
  version '2.4.4,1527157417'
  sha256 'cf921b9af7fe882827efd7cbaa87ccd8814ae8543924c1b0189dbd15d43aaa2e'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.before_comma}/#{version.after_comma}/Gemini#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: '64dca16f289fee333164bf8a4846350268e3db8cfcb0a4d111948122927de52b'
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
