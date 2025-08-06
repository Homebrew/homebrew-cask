cask "snwe" do
  version "0.1.0"
  sha256 "3c1acf6a0047fe81de26ed64d5e892827b1c6e11a5bcd815c58a17427072f6fe"

  url "https://github.com/blahsd/snwe/releases/download/v#{version}/snwe.app.zip"
  name "snwe"
  desc "Extensible, customisable, menu bar replacement"
  homepage "https://github.com/blahsd/snwe"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "snwe.app"

  caveats do
    requires_rosetta
  end
end
