cask "sl-editor" do
  version "1.4"
  sha256 "38dd6fa8aead4fcd11c9d26d59bd7a5845c6fe769e907159677e27cadd9ae2fc"

  url "https://www.studiologic-music.com/support/articles/sl_editor/SL_Editor_#{version}.pkg"
  name "SL Editor"
  desc "Editor for StudioLogic Devices"
  homepage "https://www.studiologic-music.com/"

  livecheck do
    url "https://www.studiologic-music.com/support/articles/sl_editor/"
    strategy :page_match
    regex(/href=.*?SL_Editor_(\d+(?:\.\d+)*)\.pkg/i)
  end

  pkg "SL_Editor_#{version}.pkg"

  uninstall pkgutil: [
    "com.fatar.studiologic.pkg.SLEditor",
  ]
end
