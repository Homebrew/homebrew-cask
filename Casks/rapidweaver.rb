cask "rapidweaver" do
  version "8.7,20860"
  sha256 "ade685d615339c208331a54e7354335178f0e54299eb424310c9a1a4ba65e0aa"

  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip",
      verified: "github.com/realmacsoftware/"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  depends_on macos: ">= :sierra"

  app "RapidWeaver #{version.major}.app"
end
