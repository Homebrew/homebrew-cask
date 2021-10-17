cask "binary-ninja" do
  version "2.2.2487"
  sha256 :no_check

  url "https://cdn.binary.ninja/installers/BinaryNinja-demo.dmg"
  name "Binary Ninja"
  homepage "https://binary.ninja/"

  zap trash: "~/Library/Application Support/Binary Ninja"

  app "Binary Ninja.app"
end
