cask "font-atkinson-hyperlegible" do
  version "2020-0514"
  sha256 "9e1a65d53ddadc8253791e958a07bf5aba210ef6155ea9c91b2b4c46bbce53e3"

  url "https://www.brailleinstitute.org/wp-content/uploads/atkinson-hyperlegible-font/Atkinson-Hyperlegible-Font-Print-and-Web-#{version}.zip"
  name "Atkinson Hyperlegible"
  homepage "https://www.brailleinstitute.org/freefont"

  font "Atkinson-Hyperlegible-Font-Print-and-Web-#{version}/Print Fonts/Atkinson-Hyperlegible-Bold-102.otf"
  font "Atkinson-Hyperlegible-Font-Print-and-Web-#{version}/Print Fonts/Atkinson-Hyperlegible-BoldItalic-102.otf"
  font "Atkinson-Hyperlegible-Font-Print-and-Web-#{version}/Print Fonts/Atkinson-Hyperlegible-Italic-102.otf"
  font "Atkinson-Hyperlegible-Font-Print-and-Web-#{version}/Print Fonts/Atkinson-Hyperlegible-Regular-102.otf"

  # No zap stanza required
end
