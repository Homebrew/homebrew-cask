cask "fstream" do
  version "1.4.9"
  sha256 :no_check

  url "https://www.sourcemac.com/fstream_FStream.tgz"
  name "FStream"
  desc "WebRadio listener/recorder software"
  homepage "https://www.sourcemac.com/?page=fstream"

  deprecate! date: "2024-11-01", because: :unmaintained
  disable! date: "2025-11-01", because: :unmaintained

  app "FStream.app"

  caveats do
    requires_rosetta
  end
end
