cask "quarto" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux-#{arch}"

  container_ext = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "1.10.18"
  sha256 arm:          "c57119e22012a4de14de0addf6da51db455082fcc2524a6dcba9696e7577cf4d",
         x86_64:       "c57119e22012a4de14de0addf6da51db455082fcc2524a6dcba9696e7577cf4d",
         arm64_linux:  "f6a07df68e25330b5df34f65d3df66bca605acce3b830c593a58e91884d4cf6c",
         x86_64_linux: "afad071b5bd22c02f2d300695743189d3650e0537a53073e654b630cff2b0c73"

  url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-#{os}.#{container_ext}",
      verified: "github.com/quarto-dev/quarto-cli/"
  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    pkg "quarto-#{version}-macos.pkg"

    uninstall pkgutil: "org.rstudio.quarto"

    zap trash: [
      "~/Library/Application Support/quarto",
      "~/Library/Application Support/quarto-writer",
      "~/Library/Caches/quarto",
    ]
  end

  on_linux do
    binary "quarto-#{version}/bin/quarto"
  end
end
