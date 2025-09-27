cask "endless-sky-high-dpi" do
  version "0.10.14"
  sha256 "dcc83e0e8f9bcd05f46827bfcedf94fabfdfacfb77300acde33738486037ccb4"

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

  highdpi_dir = "endless-sky-high-dpi-#{version}"
  artifact highdpi_dir, target: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"

  zap trash: "~/Library/Application Support/endless-sky/plugins/#{highdpi_dir}"
end
