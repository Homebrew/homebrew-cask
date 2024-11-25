cask "quarto" do
  version "1.6.37"
  sha256 "0ac9a921b31cdcc8b676fc6288605c892e1b6f0ec91eeafcdbeb2d6f97945b2a"

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
