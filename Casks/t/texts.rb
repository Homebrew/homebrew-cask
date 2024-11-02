cask "texts" do
  version "1.5"
  sha256 "8c3e5c7c761f31abf414d632e6787f95e08ad112bfd43e63f90a925ae0c3fef2"

  url "http://www.texts.io/Texts-#{version}.dmg"
  name "Texts"
  desc "Word processor that uses plain text Markdown"
  homepage "http://www.texts.io/"

  deprecate! date: "2024-11-01", because: :unmaintained

  app "Texts.app"

  caveats do
    requires_rosetta
  end
end
