cask "dozer" do
  version "4.0.0"
  sha256 "d8d37a114c9dab2f16a56e60d8a977115ba34fe408ff7947d0d74028f1f22843"

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast "https://github.com/Mortennn/Dozer/releases.atom"
  name "Dozer"
  desc "Tool to hide status bar icons"
  homepage "https://github.com/Mortennn/Dozer"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Dozer.app"
end
