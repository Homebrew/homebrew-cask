cask "anka-build-cloud-controller-and-registry" do
  arch arm: "Arm64", intel: "Amd64"

  version "1.39.0-d35842e6"
  sha256 arm:   "0b7cd5e1e27a6466380de772cfa26c97ca6544f71450086043ee55cd505c4ffc",
         intel: "1205ac08ac225574e22097a1034d44f80f7d81d71309e0b610884228813c0832"

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
    license "https://veertu.com/terms-and-conditions/",
            discontinued
    <<~EOS
      This package has been replaced with two separate packages and will eventually be removed. For more information, please see

      https://docs.veertu.com/anka/anka-build-cloud/release-notes/#1400-1400-95a63938---december-6th-2023
    EOS
  end
end
