cask "quarto" do
  version "1.4.553"
  sha256 "5416b9e9fdee84cf3c66a582c11ba8498c6539aaa9cb30503b0d293c558722c9"

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
