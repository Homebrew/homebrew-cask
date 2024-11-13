cask "anka-build-cloud-controller" do
  arch arm: "arm64", intel: "amd64"

  version "1.45.0-8cf8fb10"
  sha256 arm:   "bbc93a44309f86ed2f9ff32323a7e39d925e4352d22babbf3b8314973cbe70ab",
         intel: "aa7efabc7e757397a9f9eda527625774e74c859c1bba84445029bbe0bf57ec3d"

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
