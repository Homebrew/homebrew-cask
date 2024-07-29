cask "open-in-code" do
  version "1.0"
  sha256 "a473c247179c91621ef447f75f3103e1c9bc1459f6622b108e0c7bdd5b6f8367"

  url "https://github.com/sozercan/OpenInCode/releases/download/v#{version}/OpenInCodeLight.zip"
  name "OpenInCode"
  desc "Finder toolbar app to open current folder in Visual Studio Code"
  homepage "https://github.com/sozercan/OpenInCode"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Open in Code.app"

  caveats do
    requires_rosetta
  end
end
