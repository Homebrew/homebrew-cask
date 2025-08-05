cask "anka-build-cloud-registry" do
  arch arm: "arm64", intel: "amd64"

  version "1.48.0-067b4c29"
  sha256 arm:   "525343aa5dff3ecfd9dd46390a4407768c41ec483cb20625edf170ef00bfd2cf",
         intel: "c9e1d0cffdee0d1e0e08a6ac40f2e2b446e78b3c27cd9235b134b6d3f977c375"

  url "https://downloads.veertu.com/anka/anka-registry-#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller"
  desc "Anka virtual machine registry & API"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-registry-darwin-#{arch}-latest"
    regex(/anka-registry-#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  pkg "anka-registry-#{arch}-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Veertu/Anka/tools/registry/uninstall.sh",
    args:       ["-f"],
    sudo:       true,
  }

  zap trash: "/Library/Logs/Veertu/AnkaRegistry",
      rmdir: "/Library/Application Support/Veertu/Anka/anka-registry"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
