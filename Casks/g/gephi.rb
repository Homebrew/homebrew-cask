cask "gephi" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "c5ab54d387386f568b400c03d6918a7a99232de828e29f6eb36c79d86f435fa8",
         intel: "20a858631ae85ed1250e7a3afabe3ac09ec17375adf48d50d37157855ca5fcc3"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-#{arch}.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  depends_on macos: :big_sur

  app "Gephi.app"

  zap trash: [
    "~/Library/Application Support/gephi",
    "~/Library/Caches/gephi",
  ]
end
