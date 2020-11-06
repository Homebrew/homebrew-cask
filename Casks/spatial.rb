cask "spatial" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://console.improbable.io/toolbelt/download/latest/mac"
  end
  language "zh", "CN" do
    url "https://console.spatialoschina.com/toolbelt/download/latest/mac"
  end

  name "Spatial"
  homepage "https://spatialos.improbable.io/docs"

  container type: :naked

  binary "mac", target: "spatial"
end
