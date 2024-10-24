cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.0.0"
  sha256 arm:   "8501444f342282eaa254a06e22b71eeb6798109d3ae81d651cdd087a335468f4",
         intel: "d02ae625f8d3b7b1a4a3a7ad0671fd6142edab0c01ee90d81c3c04fda92e5ae0"

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-#{arch}.dmg"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.scilab.org/download/latest/"
    regex(/scilab[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  zap trash: "~/.Scilab"

  caveats do
    depends_on_java "8"
  end
end
