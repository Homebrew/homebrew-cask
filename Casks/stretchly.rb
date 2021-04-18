cask "stretchly" do
  version "1.6.0"
  sha256 "87a32509bcfe1ba17e1520fbc1348faf4d6845a413be8222978ba487798cdadd"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
