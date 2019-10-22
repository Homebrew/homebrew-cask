cask 'grafx' do
  version '2.6.2492'
  sha256 '37c22dcffe51ec6d0ee07369d4b85d489dcc60075eb69b66aceaca8dfe0e5b0a'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads"
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
