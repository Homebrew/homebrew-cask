cask "composercat" do
  version "0.4.0"
  sha256 "32cbc8da97b13050aee645dc84e4fb799e105603920375a3212b83f7c4be9fa6"

  url "https://getcomposercat.com/composercat/Composercat-#{version}.dmg"
  name "Composercat"
  desc "Graphical interface for Composer (PHP)"
  homepage "https://getcomposercat.com/"

  deprecate! date: "2024-10-12", because: :unmaintained

  app "Composercat.app"

  caveats do
    requires_rosetta
  end
end
