cask "jameica" do
  arch arm: "-aarch64", intel: "64"

  version "2.10.5"
  sha256 arm:   "10aa6e8fd375bba7e5e106bc4838472f97616ad3bbe27c05f284f9ce78309c9d",
         intel: "cdcfacc7c925bdb5cf9f1db4f6b8efa457284a5df9dfb675abdebf3d3d353520"

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
