cask "celestialteapot-runway" do
  version "2.0"
  sha256 "c8598b519609baf8b17752202edd4c2274b9a0bb73d9e461274c0d35d61f70f1"

  url "https://celestialteapot.com/runway/dist/Runway_#{version}.zip"
  name "Runway"
  desc "UML (Unified Modelling Language) design app"
  homepage "https://celestialteapot.com/runway/"

  deprecate! date: "2025-12-20", because: :no_longer_meets_criteria
  disable! date: "2026-12-20", because: :no_longer_meets_criteria

  app "Runway.app"

  zap trash: [
    "~/Library/Application Support/com.celestialteapot.Runway2",
    "~/Library/HTTPStorages/com.celestialteapot.Runway2",
    "~/Library/Preferences/com.celestialteapot.Runway2.plist",
    "~/Library/Saved Application State/com.celestialteapot.Runway2.savedState",
  ]
end
