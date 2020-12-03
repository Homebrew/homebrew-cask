cask "anka-build-cloud-controller-and-registry" do
  version "1.12.0-65cba643"
  # https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/sha256.md
  sha256 "dbd9cc5ca0559cf151db33a9bcb8963d32e964ecc4295d4abd51bdab76dc4634"

  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaControllerRegistry-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net"
  appcast "https://ankadocs.veertu.com/docs/release-notes/"
  name "Anka Build Cloud Controller & Registry"
  desc "macOS virtual machine management GUI/API and registry"
  homepage "https://veertu.com/"

  depends_on macos: ">= :yosemite"

  pkg "AnkaControllerRegistry-#{version}.pkg"

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
