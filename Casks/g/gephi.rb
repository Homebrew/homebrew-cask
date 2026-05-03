cask "gephi" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "54a3220573b5d0e052f89f731f7e99dac9d684f9836c3a0d0b4134c8cc807b7f",
         intel: "e2b109ee950069932f892b1826837cf6e66770780850e949c0325e3717e4b76c"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-#{arch}.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  depends_on macos: ">= :big_sur"

  app "Gephi.app"

  zap trash: [
    "~/Library/Application Support/gephi",
    "~/Library/Caches/gephi",
  ]
end
