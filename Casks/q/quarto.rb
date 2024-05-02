cask "quarto" do
  version "1.4.554"
  sha256 "ab6a44ca5fbf1e1e990bd90c9c5a097d7edb141057182a6f27b646074eea3d5c"

  url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-macos.pkg",
      verified: "github.com/quarto-dev/quarto-cli/"
  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  pkg "quarto-#{version}-macos.pkg"

  uninstall pkgutil: "org.rstudio.quarto"

  zap trash: [
    "~/Library/Application Support/quarto",
    "~/Library/Application Support/quarto-writer",
    "~/Library/Caches/quarto",
  ]
end
