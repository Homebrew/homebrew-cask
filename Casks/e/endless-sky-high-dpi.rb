cask "endless-sky-high-dpi" do
  version "0.10.6"
  sha256 "c297e6278697ab62714d67e05b2acfb5283bc5fcab86d45bd606bb02d90c9a75"

  url "https://github.com/endless-sky/endless-sky-high-dpi/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/endless-sky/endless-sky-high-dpi/"
  name "Endless Sky High-DPI"
  desc "High-DPI plugin for Endless Sky"
  homepage "https://endless-sky.github.io/"

  depends_on cask: "endless-sky"

  highdpi_dir = "endless-sky-high-dpi-#{version}"
  artifact highdpi_dir, target: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"

  zap trash: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"
end
