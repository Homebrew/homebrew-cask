cask "aw-edid-editor" do
  version "3.0.20"
  sha256 "489fcd0fd08fb4a2633bf5fef4dd36e022f5947f425a15a1c49612b3dbb62336"

  url "https://s3.eu-west-3.amazonaws.com/aw.store01/Site+Internet/Software/AW+EDID+Editor/Software/Setup+Application/awedideditor_#{version.dots_to_underscores}_macos.zip",
      verified: "s3.eu-west-3.amazonaws.com/aw.store01/"
  name "AW EDID Editor"
  desc "Edit any standard EDID binary file, supports DisplayID and CEA-861-G extensions"
  homepage "https://www.analogway.com/products/aw-edid-editor"

  livecheck do
    url :homepage
    regex(/href=.*?awedideditor[._-]v?(\d+(?:[._]\d+)+)[._-]macos\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "AW EDID Editor.app"

  zap trash: [
    "~/Library/Preferences/com.analogway.AW-EDID-EDITOR.plist",
    "~/Library/Preferences/EdidEditorConf.json",
  ]

  caveats do
    requires_rosetta
  end
end
