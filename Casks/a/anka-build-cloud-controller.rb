cask "anka-build-cloud-controller" do
  arch arm: "arm64", intel: "amd64"

  version "1.52.0-36aa9fba"
  sha256 arm:   "bbdfa6d54872b4ef0a211963ba63ce98e4842e6fbdfb42a6fd7234a14606ff24",
         intel: "43341fd79ccef152e6ea03d06e89595d4377a8c272b23780d5e32799fec22416"

  url "https://downloads.veertu.com/anka/anka-controller-#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller"
  desc "Anka virtual machine orchestrator GUI & API"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-controller-darwin-#{arch}-latest"
    regex(/anka-controller-#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

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
