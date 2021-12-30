cask "openvanilla" do
  version "1.6.2"
  sha256 "2aa30f038376edf3c725f9654e6c939ee733104ac50e33f5161853da3353331e"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.before_comma}/OpenVanilla-Installer-Mac-#{version.before_comma}.zip",
      verified: "github.com/openvanilla/openvanilla/"
  name "OpenVanilla"
  homepage "https://openvanilla.org/"

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.after_comma}.zip"

  input_method "OpenVanilla.app"

  caveats do
    logout
  end
end
