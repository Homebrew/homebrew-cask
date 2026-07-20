cask "font-iosevka-charon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/iosevkacharon"
  name "Iosevka Charon"
  homepage "https://fonts.google.com/specimen/Iosevka+Charon"

  font "IosevkaCharon-Bold.ttf"
  font "IosevkaCharon-BoldItalic.ttf"
  font "IosevkaCharon-Italic.ttf"
  font "IosevkaCharon-Light.ttf"
  font "IosevkaCharon-LightItalic.ttf"
  font "IosevkaCharon-Medium.ttf"
  font "IosevkaCharon-MediumItalic.ttf"
  font "IosevkaCharon-Regular.ttf"

  # No zap stanza required
end
