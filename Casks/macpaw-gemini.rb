cask :v1 => 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.macpaw.site.Gemini/MacPawGemini.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.site.Gemini.xml'
  homepage 'http://macpaw.com/gemini'
  license :commercial

  app 'MacPaw Gemini.app'
end
