cask "font-iosevka-charon" do
  version "34.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/iosevkacharon"
  name "Iosevka Charon"
  homepage "https://fonts.google.com/specimen/Iosevka+Charon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Iosevka Charon",[\s\S]*?version": "Version ([\d.]+)/)
  end

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
