cask "qlrest" do
  version "2.0.0"
  sha256 :no_check

  url "https://github.com/downloads/cluther/qlrest/QLRest.qlgenerator.zip"
  name "QLRest"
  homepage "https://github.com/cluther/qlrest"

  qlplugin "QLRest.qlgenerator"

  caveats do
    discontinued
  end
end
