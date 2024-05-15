cask "font-scheherazade" do
  version "2.020"
  sha256 "d8bb12997507937347efba4e59550a9655350563d1df662f0651e04ba916aff1"

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Scheherazade-#{version}.zip&filename=Scheherazade-#{version}.zip"
  name "Scheherazade "
  homepage "https://scripts.sil.org/Scheherazade"

  font "Scheherazade-#{version}/Scheherazade-R.ttf"

  # No zap stanza required
end
