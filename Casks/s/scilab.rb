cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.0.1"
  sha256 arm:   "737310b7dd7dec619e9224f577fcb0a6937e1f54a1f023e8a3ad47c6f1290fd3",
         intel: "95939fcd900499cb5aa608533d7ca43a43ea20fb71ec8af8e10c7ddb30cac3b4"

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-#{arch}.dmg"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.scilab.org/download/latest/"
    regex(/scilab[._-]v?(\d+(?:\.\d+)+)/i)
  end

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  zap trash: "~/.Scilab"

  caveats do
    depends_on_java "8"
  end
end
