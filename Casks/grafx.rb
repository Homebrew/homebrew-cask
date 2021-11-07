cask "grafx" do
  version "2.8.3104,67"
  sha256 "c637e21fcdbd5f3ee77e12c3d637b21f22cceedc2d7082f18e874685f9346cf6"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast "https://gitlab.com/GrafX2/grafX2/-/tags?format=atom",
          must_contain: version.major_minor
  name "GrafX2"
  desc "256 color painting program"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
