cask "quarto" do
  version "1.0.3"
  sha256 "79b7ed35a5adfae2065660ba4f89b5c7ac1fc39b91819e30b7a7572010702410"

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
