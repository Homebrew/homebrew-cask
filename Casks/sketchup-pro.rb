cask "sketchup-pro" do
  version "20.2.171,2020.2"

  language "de" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "de"
  end
  language "en", default: true do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "en"
  end
  language "es" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "es"
  end
  language "fr" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "fr"
  end
  language "it" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "it"
  end
  language "ja" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "ja"
  end
  language "ko" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "ko"
  end
  language "pt-BR" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "pt-BR"
  end
  language "ru" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "ru"
  end
  language "sv" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "sv"
  end
  language "zh-CN" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 "834c0255ba4b0aa59f60e93d78245b6b02d05bcf1c99e9b86cae478d9a67bce8"
    "zh-TW"
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  appcast "https://help.sketchup.com/en/release-notes-0"
  name "SketchUp"
  desc "3D visualization software"
  homepage "https://www.sketchup.com/"

  installer manual: "Double-Click to Install Sketchup.app"

  uninstall delete: "/Applications/SketchUp #{version.after_comma}"
end
