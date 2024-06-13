cask "font-titillium" do
  version "2.0,258e06fe34c35320321f0458e6625bba"
  sha256 "649fb98c5fca9967d18c3243aa549c9c460cbf3ea6dd4ccd46c970f3585a7225"

  url "https://src.fedoraproject.org/repo/extras/campivisivi-titillium-fonts/Titillium_roman_upright_italic_#{version.csv.first.dots_to_underscores}_OT.zip/#{version.csv.second}/Titillium_roman_upright_italic_#{version.csv.first.dots_to_underscores}_OT.zip",
      verified: "src.fedoraproject.org/"
  name "Titillium"
  homepage "http://nta.accademiadiurbino.it/titillium/"

  disable! date: "2024-06-13", because: :no_longer_available

  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Black.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Bold.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-BoldItalic.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-BoldUpright.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Light.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-LightItalic.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-LightUpright.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Regular.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-RegularItalic.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-RegularUpright.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Semibold.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-SemiboldItalic.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-SemiboldUpright.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-Thin.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-ThinItalic.otf"
  font "Titillium_roman_upright_italic_#{version.before_comma.dots_to_underscores}_OT/Titillium-ThinUpright.otf"

  # No zap stanza required
end
