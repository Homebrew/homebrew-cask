cask "anka-build-cloud-controller" do
  arch arm: "arm64", intel: "amd64"

  version "1.48.1-f78e0361"
  sha256 arm:   "a1f5879efe52265256c7a3f9816de83727982c126286ecbcbf5625eb5c43bda4",
         intel: "ebe2823a36860f1913c0bae4e34076b5def62786ff64685930e820dc202740f9"

  url "https://downloads.veertu.com/anka/anka-controller-#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller"
  desc "Anka virtual machine orchestrator GUI & API"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-controller-darwin-#{arch}-latest"
    regex(/anka-controller-#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  pkg "anka-controller-#{arch}-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Veertu/Anka/tools/controller/uninstall.sh",
    args:       ["-f"],
    sudo:       true,
  }

  zap trash: "/Library/Logs/Veertu/AnkaController",
      rmdir: "/Library/Application Support/Veertu/Anka/anka-controller"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
