cask "gephi" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "4210bef140f5c8d4d5e1c66d6f664ca23d563b9901f91a140374305db6e7e2b1",
         intel: "b6d45ea7bf84f5256bc4ce3cbaf3fbfc0c4cfc93747a7074764e86af8ed53fdf"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-#{arch}.dmg"
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
