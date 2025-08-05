cask "anka-build-cloud-controller" do
  arch arm: "arm64", intel: "amd64"

  version "1.48.0-067b4c29"
  sha256 arm:   "8c0d25aa399104a89db83d88fa8238417c00d983bcb661abf00888ee0690d2ff",
         intel: "6a850c464c0ce3024e512fe476c87b4996c707ebd4a97034b3c99b8eb6a5f44b"

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
