cask :v1 => 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/download/com.macpaw.site.Gemini/macpaw%20gemini.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.site.Gemini.xml'
  homepage 'http://macpaw.com/gemini'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacPaw Gemini.app'
end
