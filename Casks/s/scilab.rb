cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.0.0"
  sha256 arm:   "a267f1b7341f930980a43c5b1a54ca9f3729b5f7618c52519705bda065b0d4aa",
         intel: "6af9e86f7805552ffac8c4276fa34178a790a205fc9fa8492168a34901066f1b"

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
