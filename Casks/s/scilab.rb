cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2027.0.0"
  sha256 arm:   "f36fb9101644979ad423e56948f75dd93e215a2c9d10d26087f1ba322e2dd391",
         intel: "489d58cf4c40aae760283b8286b8ab065f51258bff360e12cd06830756da82a5"

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-#{arch}.dmg"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.scilab.org/download/latest/"
    regex(/scilab[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  zap trash: "~/.Scilab"

  uninstall quit: "org.scilab.modules.jvm.Scilab"

  caveats do
    depends_on_java "8"
  end
end
