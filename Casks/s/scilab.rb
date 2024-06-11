cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.1.0"
  sha256 arm:   "8d198194b7b4b0531568ea72e3662c94d76d1a31369b019846c5b99c7f0bbbfc",
         intel: "a856a62a85622654c6dff0a4035c1b9f152d1c6d99b4edee67e1589baa68c196"

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
