cask "quarto" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux-#{arch}"
  url_end = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "1.11.9"
  sha256 arm:          "35ad09e472235dc91638339d19891088531f9e2e77549dda2f7c210610e1b4d2",
         intel:        "35ad09e472235dc91638339d19891088531f9e2e77549dda2f7c210610e1b4d2",
         arm64_linux:  "8a96da89026c8cba0fc2607f62d99836eae8c5b65465b5d476af16f54c10d191",
         x86_64_linux: "9d037baa3b38ffac7217edca1d2e53760b0fab4d5749220740a32056e03a1530"

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
