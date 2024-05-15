cask "font-ezra-sil" do
  version "2.51"
  sha256 "fd2894531aab32ff7d6845e3d0b4c0401c91f64ba637d13624dfc17a3e815831"

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=EzraSIL#{version.no_dots}.zip&filename=EzraSIL#{version.no_dots}.zip"
  name "Ezra SIL"
  homepage "https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=EzraSIL_Home"

  font "EzraSIL#{version}/SILEOT.ttf"
  font "EzraSIL#{version}/SILEOTSR.ttf"

  # No zap stanza required
end
