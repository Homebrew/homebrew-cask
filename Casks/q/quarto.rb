cask "quarto" do
  version "1.9.37"
  sha256 "607d5dc4d701f3de843c268a5c3e4c291222e2baa1921349b3cee2aa9fbd4cb2"

  url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-macos.pkg",
      verified: "github.com/quarto-dev/quarto-cli/"
  name "quarto"
  desc "Scientific and technical publishing system built on Pandoc"
  homepage "https://www.quarto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "quarto-#{version}-macos.pkg"

  uninstall pkgutil: "org.rstudio.quarto"

  zap trash: [
    "~/Library/Application Support/quarto",
    "~/Library/Application Support/quarto-writer",
    "~/Library/Caches/quarto",
  ]
end
