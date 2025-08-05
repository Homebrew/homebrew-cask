cask "font-brill" do
  version "4.0"
  sha256 "5575fbca12d5f8f50b8613bf01ae373f4237fcb2fdf5a379e7378f477e54352e"

  url "https://brill.com/fileasset/The_Brill_Typeface_Package_v_#{version.dots_to_underscores}.zip"
  name "Brill"
  homepage "https://brill.com/page/resources_brilltypeface"

  livecheck do
    url "https://brill.com/page/resources_fontsdownloads"
    regex(/href=.*?The[._-]Brill[._-]Typeface[._-]Package[._-]v?[._-]?(\d+(?:[._]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  font "Brill-Bold.ttf"
  font "Brill-BoldItalic.ttf"
  font "Brill-Italic.ttf"
  font "Brill-Roman.ttf"

  # No zap stanza required
end
