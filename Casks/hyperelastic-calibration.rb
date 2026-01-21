cask "hyperelastic-calibration" do
  version "2.0"
  sha256 "201bd112020f11ac4b619d2825cc4b47c4ce719ac34bf791812ec025ee94e6d9"

  url "https://github.com/Chongran-Zhao/Calibration-Hyperelasticity/releases/download/v#{version}/HyperelasticCalibration-macos.zip"
  name "Hyperelastic Calibration"
  desc "Hyperelastic material model calibration tool"
  homepage "https://github.com/Chongran-Zhao/Calibration-Hyperelasticity"

  app "HyperelasticCalibration.app"
end
