cask "kextviewr" do
  version "2.0.0"
  sha256 "cd92141750812797cffd626f697c133fac84b615b5d4cd5dae56a8160320968e"

  url "https://github.com/objective-see/KextViewr/releases/download/v#{version}/KextViewr_#{version}.zip",
      verified: "github.com/objective-see/"
  name "KextViewr"
  desc "Display all currently loaded kexts"
  homepage "https://objective-see.com/products/kextviewr.html"

  app "KextViewr.app"

  zap trash: "~/Library/Caches/com.objective-see.KextViewr"
end
