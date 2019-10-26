cask 'grafx' do
  version '2.6.2492,41'
  sha256 '31658ed8983ac3ed7778e2fd0b6dfc5e1abc4c1302c5bc77a4dc584cd7c7efb5'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast 'https://gitlab.com/GrafX2/grafX2/-/tags?format=atom',
          configuration: version.major_minor
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
