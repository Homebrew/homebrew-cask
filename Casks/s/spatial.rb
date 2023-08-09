cask "spatial" do
  version "20210118"
  sha256 :no_check

  url "https://console.improbable.io/toolbelt/download/latest/mac"
  name "Spatial"
  desc "Binary for interaction with the Improbable SpatialOS platform"
  homepage "https://documentation.improbable.io/spatialos-overview/docs"

  livecheck do
    skip "version available by running `spatial version` when installed"
  end

  container type: :naked

  binary "spatial"
end
