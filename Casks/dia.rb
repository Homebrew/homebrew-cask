cask "dia" do
  version "0.97.2,7"
  sha256 "9d3038c01347716800688830eaf52204deb78affe74a5f0c6e0a48fd414d44be"

  url "https://downloads.sourceforge.net/dia-installer/dia/#{version.before_comma}/Dia-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "sourceforge.net/dia-installer/dia/"
  appcast "https://sourceforge.net/projects/dia-installer/rss?path=/dia"
  name "Dia"
  homepage "http://dia-installer.de/"

  depends_on cask: "xquartz"

  app "Dia.app"
end
