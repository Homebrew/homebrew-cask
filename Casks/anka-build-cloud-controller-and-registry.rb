cask "anka-build-cloud-controller-and-registry" do
  version "1.14.0-17620328"
  sha256 "fd5e1ab71884b8e26309d3caab7acf0f4ce0152276b0cee37659b68e4f503f86"

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
