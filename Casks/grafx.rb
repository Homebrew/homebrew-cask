cask 'grafx' do
  version '2.6.2477,40'
  sha256 '54857b80cc0f81c5a4170e7c78fdadd132c5f077d351b86c689dc45078ea6ec0'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads"
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
