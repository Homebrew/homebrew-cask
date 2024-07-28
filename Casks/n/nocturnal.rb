cask "nocturnal" do
  version "0.3"
  sha256 "a66c59daa1d1c59e5403aee4eb868a3967f1bdb4d90033fa3ee692bffd7db0b9"

  url "https://github.com/HarshilShah/Nocturnal/releases/download/#{version}/Nocturnal.zip"
  name "Nocturnal"
  desc "Simple app to toggle dark mode with one click"
  homepage "https://github.com/HarshilShah/Nocturnal"

  deprecate! date: "2024-07-27", because: :unmaintained

  depends_on macos: ">= :mojave"

  app "Nocturnal.app"

  caveats do
    requires_rosetta
  end
end
