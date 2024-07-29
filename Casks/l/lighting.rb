cask "lighting" do
  version "1.1.7"
  sha256 "8cab328133decacb8a608b034dae899e1105c20d97ec791ff089ddbbb0510d4f"

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  name "Lighting"
  desc "Tool to control LIFX lights via a Notification Center widget"
  homepage "https://github.com/tatey/Lighting"

  app "Lighting.app"

  caveats do
    requires_rosetta
  end
end
