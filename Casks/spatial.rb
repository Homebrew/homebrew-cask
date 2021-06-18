cask "spatial" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://console.improbable.io/toolbelt/download/latest/mac"
  end
  language "zh", "CN" do
    url "https://console.spatialoschina.com/toolbelt/download/latest/mac",
        verified: "console.spatialoschina.com/"
  end

  name "Spatial"
  desc "Binary for interaction with the Improbable SpatialOS platform"
  homepage "https://documentation.improbable.io/spatialos-overview/docs"

  container type: :naked

  binary "spatial"
end
