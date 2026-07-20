cask "font-annotation-mono" do
  version "0.4"
  sha256 "c0a8c1fa9f8dbf6a0ffadf08395244dda9b3623b7f9a147ec277e23afc7e4e7d"

  url "https://github.com/qwerasd205/AnnotationMono/releases/download/v#{version}/AnnotationMono_v#{version}.zip",
      verified: "github.com/qwerasd205/AnnotationMono/"
  name "Annotation Mono"
  homepage "https://qwerasd205.github.io/AnnotationMono/"

  font "dist/otf/Black_Oblique.otf"
  font "dist/otf/Black.otf"
  font "dist/otf/Bold_Oblique.otf"
  font "dist/otf/Bold.otf"
  font "dist/otf/DemiBold_Oblique.otf"
  font "dist/otf/DemiBold.otf"
  font "dist/otf/ExtraBlack_Oblique.otf"
  font "dist/otf/ExtraBlack.otf"
  font "dist/otf/ExtraBold_Oblique.otf"
  font "dist/otf/ExtraBold.otf"
  font "dist/otf/ExtraLight_Oblique.otf"
  font "dist/otf/ExtraLight.otf"
  font "dist/otf/Light_Oblique.otf"
  font "dist/otf/Light.otf"
  font "dist/otf/Medium_Oblique.otf"
  font "dist/otf/Medium.otf"
  font "dist/otf/Regular_Oblique.otf"
  font "dist/otf/Regular.otf"
  font "dist/otf/Thin_Oblique.otf"
  font "dist/otf/Thin.otf"
  font "dist/variable/AnnotationMono-VF.ttf"

  # No zap stanza required
end
