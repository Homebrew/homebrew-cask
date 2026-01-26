cask "endless-sky-high-dpi" do
  version "0.10.16"
  sha256 "10f1b4b5fd3b54a67df55909103b53c36cf65d0224f997ca41a2c4c3e7098d57"

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
