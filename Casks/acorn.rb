cask "acorn" do
  version "6.6.3"
  sha256 "8750353a6f52b417c73cefa19f35376f18d427f0eb72d4f4559ec3d14443356c"

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  auto_updates true

  app "Acorn.app"

  zap trash: [
    "~/Library/Application Support/Acorn",
    "~/Library/Caches/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Preferences/com.flyingmeat.Acorn#{version.major}.plist",
    "~/Library/Saved Application State/com.flyingmeat.Acorn#{version.major}.savedState",
  ]
end
