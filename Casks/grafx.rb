cask 'grafx' do
  version '2.7.2978'
  sha256 '26d6bcc4d721ef6c16fa43ab52da68eb92103d6d0e9d771636335886cde6cce2'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast 'https://gitlab.com/GrafX2/grafX2/-/tags?format=atom',
          configuration: version.major_minor
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
