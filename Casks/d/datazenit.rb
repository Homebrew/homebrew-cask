cask "datazenit" do
  version "1.1.0"
  sha256 "7d6e185e5c3d3db27096719bf2c5d5d1efccc2c717f2355acbaee74531b82aa9"

  url "https://github.com/datazenit/datazenit-releases/releases/download/v#{version}/mac.tar.gz",
      verified: "github.com/datazenit/datazenit-releases/"
  name "Datazenit"
  homepage "https://datazenit.com/"

  deprecate! date: "2024-07-10", because: :unmaintained

  app "Datazenit.app"

  caveats do
    requires_rosetta
  end
end
