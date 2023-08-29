cask "anka-build-cloud-controller-and-registry" do
  arch arm: "Arm64", intel: "Amd64"

  version "1.37.0-4e3ffe71"
  sha256 arm:   "6bb8cd1cbc19db88e8970dbbf74cc9e9e080729ec286df41e0ef3a2588201f17",
         intel: "5e450ff8bc1ab0ee6360326587b990fd0e7a798b40eb3130dced7d5a24c40371"

  url "https://downloads.veertu.com/anka/AnkaControllerRegistry#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller & Registry"
  desc "Virtual machine management GUI/API and registry"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-controller-registry-darwin-#{arch.downcase}-latest"
    regex(/AnkaControllerRegistry#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  pkg "AnkaControllerRegistry#{arch}-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Veertu/Anka/tools/controller/uninstall.sh",
    args:       ["-f"],
    sudo:       true,
  }

  zap trash: "/Library/Logs/Veertu/AnkaController",
      rmdir: "/Library/Application Support/Veertu/Anka/registry"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
