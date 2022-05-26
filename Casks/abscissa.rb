cask "abscissa" do
  version "4.1.0"
  sha256 "fbfbabf2d1d4f7248eff39dd04be4e1a74d2e698b6c4155467cfe33075aa529a"

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  name "Abscissa"
  desc "Plotting software"
  homepage "http://rbruehl.macbay.de/Abscissa/"

  livecheck do
    url "http://rbruehl.macbay.de/Abscissa/Downloads/"
    regex(/href=.*?Abscissa-(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :sierra"

  app "Abscissa.app"
end
