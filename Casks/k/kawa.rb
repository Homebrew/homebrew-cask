cask "kawa" do
  version "1.1.0"
  sha256 "19a30df528471f688d3d4f43d82b6a5f5e435ba8c361e8f5ed971c0471705f72"

  url "https://github.com/utatti/kawa/releases/download/v#{version}/Kawa.zip"
  name "Kawa"
  desc "Alternative input source switcher"
  homepage "https://github.com/utatti/kawa"

  deprecate! date: "2024-07-17", because: :unmaintained

  app "Kawa.app"

  caveats do
    requires_rosetta
  end
end
