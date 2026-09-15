cask "font-chapbook" do
  version :latest
  sha256 :no_check

  url "https://www.feorag.com/freestuff/archives/Chapbook-OTF.zip"
  name "Chapbook"
  homepage "https://www.feorag.com/freestuff/chapbook.html"

  font "Chapbook OTF/Chapbook-Dingbats.otf"
  font "Chapbook OTF/Chapbook-Italic.otf"
  font "Chapbook OTF/Chapbook-Regular.otf"

  # No zap stanza required
end
