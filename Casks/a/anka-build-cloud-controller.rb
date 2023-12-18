cask "anka-build-cloud-controller" do
  arch arm: "arm64", intel: "amd64"

  version "1.40.0-95a63938"
  sha256 arm:   "3a3733fab6aa7f542162bebd1442c8e47c8a210127d2f8ece556f30e95887dfb",
         intel: "095b67bf3519884e2f3006cc66e4481e182dc208f32cbd34dffb7ae7954aa9dc"

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
