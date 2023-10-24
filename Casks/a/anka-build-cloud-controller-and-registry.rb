cask "anka-build-cloud-controller-and-registry" do
  arch arm: "Arm64", intel: "Amd64"

  version "1.38.0-3989ee24"
  sha256 arm:   "c2e9219337d842ae942d84691787a6e145b1cf56717821a18561aded50d36ad4",
         intel: "0226f765bfffd43aa99310813aa47ef90c4582f6e9952f6950bc733f00e54376"

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
