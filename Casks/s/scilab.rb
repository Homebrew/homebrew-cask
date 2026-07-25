cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.1.0"
  sha256 arm:   "a86e68b1a79488f124507bbcab896bfb3864c61a5b1ce97155ad5d49844638b7",
         intel: "63fab1756b55e55d76eb823d485fe572c085af4c619307c36f82ce98a0e732a8"

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

  caveats do
    depends_on_java "8"
  end
end
