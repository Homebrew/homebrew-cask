cask "jameica" do
  arch arm: "-aarch64", intel: "64"

  version "2.12.0"
  sha256 arm:   "0d01567ae868e3f4c73a03c809bf5f0379c37e1cd408563f5cab4b12c47feb20",
         intel: "1d275e20a02876d3dbd6b042b4bfc2db1e98917854e50f3028c3189a14f8ec41"

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos#{arch}-#{version}.zip"
  name "Jameica"
  desc "Application-platform written in Java containing a SWT-UI"
  homepage "https://www.willuhn.de/products/jameica/"

  livecheck do
    url "https://www.willuhn.de/products/jameica/download.php"
    regex(%r{href=.*?/jameica[._-]macos64[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  # `audit_rosetta` assumes that an app contains at least one binary in the
  #  Contents/MacOS directory, so mitigate it by use of `artifact`.
  artifact "jameica.app", target: "#{appdir}/jameica.app"

  zap trash: "~/.jameica.properties"
end
