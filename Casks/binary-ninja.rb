cask "binary-ninja" do
  version "2.2.2487"
  sha256 :no_check

  url "https://cdn.binary.ninja/installers/BinaryNinja-demo.dmg"
  name "Binary Ninja"
  desc "Reverse engineering platform"
  homepage "https://binary.ninja/"

  app "Binary Ninja.app"

  zap trash: "~/Library/Application Support/Binary Ninja"
end
