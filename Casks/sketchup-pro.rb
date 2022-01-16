cask "sketchup-pro" do
  version "21.0.392,2021.0.1"

  language "de" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "de"
  end
  language "en", default: true do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "en"
  end
  language "es" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "es"
  end
  language "fr" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "fr"
  end
  language "it" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "it"
  end
  language "ja" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "ja"
  end
  language "ko" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "ko"
  end
  language "pt-BR" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "pt-BR"
  end
  language "ru" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "ru"
  end
  language "sv" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "sv"
  end
  language "zh-CN" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 "4306b1835bd627165982b51a88e378331c42a3bb39aa1a7df66a88f69c014d29"
    "zh-TW"
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  appcast "https://help.sketchup.com/en/release-notes",
          must_contain: version.csv.second.major_minor
  name "SketchUp"
  desc "3D visualization software"
  homepage "https://www.sketchup.com/"

  suite "SketchUp #{version.csv.second.major}"

  zap trash: [
    "~/Library/Application Support/SketchUp #{version.csv.second.major}",
    "~/Library/Caches/com.sketchup.LayOut.#{version.csv.second.major}",
    "~/Library/Caches/com.sketchup.SketchUp.#{version.csv.second.major}",
    "~/Library/Caches/com.sketchup.StyleBuilder.#{version.csv.second.major}",
    "~/Library/Preferences/com.sketchup.LayOut.#{version.csv.second.major}.plist",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.csv.second.major}.plist",
    "~/Library/Preferences/com.sketchup.StyleBuilder.#{version.csv.second.major}.plist",
    "~/Library/Preferences/Trimble.SketchUp-Helper.plist",
  ]
end
