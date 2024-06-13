cask "font-coelacanth" do
  version "0.008"
  sha256 "77c0d55970b6275a7249bd73a9907b22e6613c1bf3a162a74a41656b1ff81139"

  url "https://github.com/Fuzzypeg/Coelacanth/raw/master/release/coelacanth_v#{version}.zip"
  name "Coelacanth"
  homepage "https://github.com/Fuzzypeg/Coelacanth"

  livecheck do
    url "https://github.com/Fuzzypeg/Coelacanth/tree/master/release"
    regex(/coelacanth[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :page_match
  end

  font "Coelacanth.otf"
  font "CoelacanthBold.otf"
  font "CoelacanthCaption.otf"
  font "CoelacanthCaptionBold.otf"
  font "CoelacanthCaptionExtraLt.otf"
  font "CoelacanthCaptionHeavy.otf"
  font "CoelacanthCaptionIt.otf"
  font "CoelacanthCaptionLt.otf"
  font "CoelacanthCaptionSemibd.otf"
  font "CoelacanthDisplay.otf"
  font "CoelacanthDisplayBold.otf"
  font "CoelacanthDisplayExtraLt.otf"
  font "CoelacanthDisplayHeavy.otf"
  font "CoelacanthDisplayLt.otf"
  font "CoelacanthDisplaySemibd.otf"
  font "CoelacanthExtraLt.otf"
  font "CoelacanthHeavy.otf"
  font "CoelacanthIt.otf"
  font "CoelacanthLt.otf"
  font "CoelacanthPearl.otf"
  font "CoelacanthPearlBold.otf"
  font "CoelacanthPearlExtraLt.otf"
  font "CoelacanthPearlHeavy.otf"
  font "CoelacanthPearlIt.otf"
  font "CoelacanthPearlLt.otf"
  font "CoelacanthPearlSemibd.otf"
  font "CoelacanthSemibd.otf"
  font "CoelacanthSubcapt.otf"
  font "CoelacanthSubcaptBold.otf"
  font "CoelacanthSubcaptExtraLt.otf"
  font "CoelacanthSubcaptHeavy.otf"
  font "CoelacanthSubcaptIt.otf"
  font "CoelacanthSubcaptLt.otf"
  font "CoelacanthSubcaptSemibd.otf"
  font "CoelacanthSubhd.otf"
  font "CoelacanthSubhdBold.otf"
  font "CoelacanthSubhdExtraLt.otf"
  font "CoelacanthSubhdHeavy.otf"
  font "CoelacanthSubhdLt.otf"
  font "CoelacanthSubhdSemibd.otf"

  # No zap stanza required
end
