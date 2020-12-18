cask "openvanilla" do
  version "1.6.1,3273"
  sha256 "248c2a84f95f40ffea2fff71310814103ae70d87a829e136713ff801b39a29f2"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.before_comma}/OpenVanilla-Installer-Mac-#{version.before_comma}.zip",
      verified: "github.com/openvanilla/openvanilla/"
  appcast "https://github.com/openvanilla/openvanilla/releases.atom"
  name "OpenVanilla"
  homepage "https://openvanilla.org/"

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.after_comma}.zip"

  input_method "OpenVanilla.app"

  caveats do
    logout
  end
end
