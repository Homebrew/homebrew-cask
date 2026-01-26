cask "better-window-manager" do
  version "1.14,15"
  sha256 "e6d0745aa969b793d78dd157f4447401ea79f56b03686735a2eb4e39b6321335"

  url "http://gngrwzrd.com/BetterWindowManager-#{version.csv.first}.#{version.csv.second}.zip"
  name "Better Window Manager"
  desc "Tools to save/restore window states"
  homepage "http://www.gngrwzrd.com/better-window-manager/"

  deprecate! date: "2024-10-12", because: :unmaintained
  disable! date: "2025-10-12", because: :unmaintained

  app "Better Window Manager.app"

  caveats do
    requires_rosetta
  end
end
