cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2025.1.0"
    sha256 "506d698fe7c16d6645b981100c5a95bb6dc03606b15ad01e1798add2e87c05b3"
    livecheck do
      url "https://www.scilab.org/download/latest/"
      regex(/scilab[._-]v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_intel do
    version "2025.0.0"
    sha256 "d02ae625f8d3b7b1a4a3a7ad0671fd6142edab0c01ee90d81c3c04fda92e5ae0"
    livecheck do
      skip "Legacy version"
    end
  end

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-#{arch}.dmg"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  depends_on macos: ">= :high_sierra"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  zap trash: "~/.Scilab"

  caveats do
    depends_on_java "8"
  end
end
