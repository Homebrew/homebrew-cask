cask "kakapo" do
  version "1.3.0"
  sha256 "4f89f2d651b88e7c13bce3cccefc4929e83a5f509dae102f071ecd80aab9d524"

  url "https://github.com/bluedaniel/Kakapo-app/releases/download/v#{version}/Kakapo-#{version}-Mac.zip"
  name "Kakapo"
  desc "Open-source ambient sound mixer"
  homepage "https://github.com/bluedaniel/Kakapo-app"

  deprecate! date: "2024-07-17", because: :unmaintained

  app "Kakapo.app"

  caveats do
    requires_rosetta
  end
end
