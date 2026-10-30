cask "quarto" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux-#{arch}"
  url_end = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "1.10.20"
  sha256 arm:          "106868b01d1459f9e77246939b5fda7f183d6635d9af89ba4d1c8de6a0f2b7ad",
         intel:        "106868b01d1459f9e77246939b5fda7f183d6635d9af89ba4d1c8de6a0f2b7ad",
         arm64_linux:  "dbea6737797559c43ca7b595b220ed8fd5befead33004805f42306bcc17e8713",
         x86_64_linux: "c43fc13454337b7ca73ee78371228e1554679053b856a4ff07f068f2c36a5202"

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

  url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-#{os}.#{url_end}"
  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
