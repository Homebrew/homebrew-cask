cask "openvanilla" do
  version "1.5.0,3260"
  sha256 "2d180b90b0a8e3e0922fedb8a45cbf6295baff8cd076a164e472a7c00164afba"

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.before_comma}/OpenVanilla-Installer-Mac-#{version.before_comma}.zip"
  appcast "https://github.com/openvanilla/openvanilla/releases.atom"
  name "OpenVanilla"
  homepage "https://openvanilla.org/"

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.after_comma}.zip"

  input_method "OpenVanilla.app"

  caveats do
    logout
  end
end
