cask 'grafx' do
  version '2.72768,46'
  sha256 '7206f7feed0d754c8c17b54ee2bb830fe6fc88bc987a555794e5986893a81c1c'

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.after_comma}"
  appcast "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads"
  name 'GrafX2'
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  app "Grafx#{version.major}.app"
end
