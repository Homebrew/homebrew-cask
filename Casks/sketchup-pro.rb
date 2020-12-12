cask "sketchup-pro" do
  version "21.0.338,2021.0"

  language "de" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "de"
  end
  language "en", default: true do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "en"
  end
  language "es" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "es"
  end
  language "fr" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "fr"
  end
  language "it" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "it"
  end
  language "ja" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "ja"
  end
  language "ko" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "ko"
  end
  language "pt-BR" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "pt-BR"
  end
  language "ru" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "ru"
  end
  language "sv" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "sv"
  end
  language "zh-CN" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 "640d2f4c47eb0f5b57e46bb6680814a111533939ca3974f3c746019b1b8f0424"
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
