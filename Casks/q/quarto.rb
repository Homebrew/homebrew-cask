cask "quarto" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux-#{arch}"

  container_ext = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "1.9.38"
  sha256 arm:          "de056ec2407c1b79832bc8fd6181ad6077fde433728285b2a0ae62710d853b84",
         x86_64:       "de056ec2407c1b79832bc8fd6181ad6077fde433728285b2a0ae62710d853b84",
         arm64_linux:  "75fbc5c1121ffe65e564e9d24711db2ad8f617f9552f5dc7d8a06307d72dde38",
         x86_64_linux: "ea8c897368791ad9f200010c087ea3111b2e556b12a960487dd4e216902aa102"

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
