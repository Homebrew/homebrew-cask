cask "quarto" do
  version "1.9.38"

  on_macos do
    sha256 "de056ec2407c1b79832bc8fd6181ad6077fde433728285b2a0ae62710d853b84"

    url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-macos.pkg",
        verified: "github.com/quarto-dev/quarto-cli/"

    pkg "quarto-#{version}-macos.pkg"

    uninstall pkgutil: "org.rstudio.quarto"

    zap trash: [
      "~/Library/Application Support/quarto",
      "~/Library/Application Support/quarto-writer",
      "~/Library/Caches/quarto",
    ]
  end

  on_linux do
    on_arm do
      sha256 "75fbc5c1121ffe65e564e9d24711db2ad8f617f9552f5dc7d8a06307d72dde38"

      url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-linux-arm64.tar.gz",
          verified: "github.com/quarto-dev/quarto-cli/"
    end
    on_intel do
      sha256 "ea8c897368791ad9f200010c087ea3111b2e556b12a960487dd4e216902aa102"

      url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-linux-amd64.tar.gz",
          verified: "github.com/quarto-dev/quarto-cli/"
    end

    binary "quarto-#{version}/bin/quarto"
  end

  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
