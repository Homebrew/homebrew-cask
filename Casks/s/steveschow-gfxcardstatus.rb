cask "steveschow-gfxcardstatus" do
  version "2.4.4i"
  sha256 "69c0d6602808cca60158a6d833eab8d82d59f683d3c25de34d977c83fe208dd0"

  url "https://github.com/steveschow/gfxCardStatus/releases/download/v#{version}/gfxCardStatus.app.zip"
  name "gfxCardStatus"
  homepage "https://github.com/steveschow/gfxCardStatus"

  deprecate! date: "2024-08-25", because: :unmaintained

  app "gfxCardStatus.app"

  caveats do
    requires_rosetta
  end
end
