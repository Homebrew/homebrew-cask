cask "font-andika" do
  version "7.000"
  sha256 "88ba6ea41ef4a8e5214b090df8fa2983be1babe4843efaa99cdb6078b0e2c070"

  url "https://software.sil.org/downloads/r/andika/Andika-#{version}.zip"
  name "Andika"
  homepage "https://software.sil.org/andika/"

  livecheck do
    url "https://software.sil.org/andika/download/"
    regex(/href=.*Andika[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "Andika-#{version}/Andika-Bold.ttf"
  font "Andika-#{version}/Andika-BoldItalic.ttf"
  font "Andika-#{version}/Andika-Italic.ttf"
  font "Andika-#{version}/Andika-Medium.ttf"
  font "Andika-#{version}/Andika-MediumItalic.ttf"
  font "Andika-#{version}/Andika-Regular.ttf"
  font "Andika-#{version}/Andika-SemiBold.ttf"
  font "Andika-#{version}/Andika-SemiBoldItalic.ttf"

  # No zap stanza required
end
