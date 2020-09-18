cask "keysmith" do
  version "1.0.9"
  sha256 "289bcf56918b35ca0953d5672d01dba2e94c26ec5fdc86388452a5630ab6660a"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
