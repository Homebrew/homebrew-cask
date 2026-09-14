cask "font-charis" do
  version "7.000"
  sha256 "e3237b1303c5d31af8f59b1d1914886c5e873b77c71390e4742fb3bc1c187666"

  url "https://software.sil.org/downloads/r/charis/Charis-#{version}.zip"
  name "Charis"
  homepage "https://software.sil.org/charis/"

  livecheck do
    url "https://software.sil.org/charis/download/"
    regex(/href=.*Charis[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "Charis-#{version}/Charis-Bold.ttf"
  font "Charis-#{version}/Charis-BoldItalic.ttf"
  font "Charis-#{version}/Charis-Italic.ttf"
  font "Charis-#{version}/Charis-Medium.ttf"
  font "Charis-#{version}/Charis-MediumItalic.ttf"
  font "Charis-#{version}/Charis-Regular.ttf"
  font "Charis-#{version}/Charis-SemiBold.ttf"
  font "Charis-#{version}/Charis-SemiBoldItalic.ttf"

  # No zap stanza required
end
