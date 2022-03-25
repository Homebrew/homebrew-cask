cask "quarto" do
  version "0.9.135"
  sha256 "be41e087ae5c516178fc72d66ec9daa797013b0df385d1f7a3669502d9d3da2e"

  url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-macos.pkg",
      verified: "github.com/quarto-dev/quarto-cli/"
  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  depends_on macos: ">= :el_capitan"

  pkg "quarto-#{version}-macos.pkg"

  uninstall pkgutil: "org.rstudio.quarto"

  zap trash: "~/Library/Caches/quarto"
end
