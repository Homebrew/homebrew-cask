cask "openvanilla" do
  version "1.6.0,3271"
  sha256 "40c243581f21846c9af2f20381cdf055ad722e7f7d69b6255a5503b20d35f0a6"

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
