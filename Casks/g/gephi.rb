cask "gephi" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.4"
  sha256 arm:   "77400998065042d3cd25c7d5be6a69bdf0ad6ac7b61216186d342f0ffdc9e598",
         intel: "8c7aa77b9814350d32813d41f76a71e9c4c2e0591437d8cab2a2c9e17b674d72"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-#{arch}.dmg"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  depends_on :macos

  app "Gephi.app"

  zap trash: [
    "~/Library/Application Support/gephi",
    "~/Library/Caches/gephi",
  ]
end
