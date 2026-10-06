cask "quarto" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux-#{arch}"
  url_end = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "1.10.19"
  sha256 arm:          "472017edbbffa5dd4a8d21b66327bcb09b25a019c21b18f815d5b187db10e980",
         intel:        "472017edbbffa5dd4a8d21b66327bcb09b25a019c21b18f815d5b187db10e980",
         arm64_linux:  "bba2bb55add74c754c313905df42b0f45a8250aee2110a4fce7f83020bfe1b8f",
         x86_64_linux: "8e38c2b2df6a6dbd369ea16e15acded6894545258d13a02f777f81ad18fd7973"

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
