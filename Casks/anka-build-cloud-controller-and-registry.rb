cask "anka-build-cloud-controller-and-registry" do
  version "1.15.0-c69e2600"
  sha256 "fdc0bb93e70381f9076dc9f3ca06330a5364d9b318d555eacc9716d11a7eb7f3"

  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaControllerRegistry-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net/"
  appcast "https://ankadocs.veertu.com/docs/release-notes/"
  name "Anka Build Cloud Controller & Registry"
  desc "Virtual machine management GUI/API and registry"
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
