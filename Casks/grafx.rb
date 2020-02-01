cask 'grafx' do
  version '2.7'
  sha256 '4b340f5dbe3d0b9223bfd5d13125cef2177fec039ea439d936f2105e08823600'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast 'https://gitlab.com/GrafX2/grafX2/-/tags?format=atom',
          configuration: version.major_minor
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
