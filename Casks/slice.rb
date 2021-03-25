cask "slice" do
  version "0.3.0"
  sha256 "af0ecf7d77990986a344f018993da5134284da99beac79a8b79a28037d780f14"

  url "https://github.com/source-foundry/Slice/releases/download/v#{version}/Slice.#{version}.dmg"
  appcast "https://github.com/source-foundry/Slice/releases.atom"
  name "Christopher Simpkins"
  desc "Variable font instance slice generator"
  homepage "https://github.com/source-foundry/Slice"

  app "Slice.app"
end
