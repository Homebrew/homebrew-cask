cask "endless-sky-high-dpi" do
  version "0.11.2"
  sha256 "a4ca0ccf1382afe8f74ef02350e766af4fcef85bb82e66cfe5a8e0ea029579df"

  url "https://github.com/endless-sky/endless-sky-high-dpi/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/endless-sky/endless-sky-high-dpi/"
  name "Endless Sky High-DPI"
  desc "High-DPI plugin for Endless Sky"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "endless-sky"
  depends_on :macos

  highdpi_dir = "endless-sky-high-dpi-#{version}"
  artifact highdpi_dir, target: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"

  zap trash: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"
end
