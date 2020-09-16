cask "grafx" do
  version "2.7.2978,64"
  sha256 "e6406bea69124a4d3865988934ba2832392b7b07c45d44dce9bc16c720fb1d47"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast "https://gitlab.com/GrafX2/grafX2/-/tags?format=atom",
          must_contain: version.major_minor
  name "GrafX2"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
