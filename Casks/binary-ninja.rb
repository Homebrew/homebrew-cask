cask "binary-ninja" do
  version "3.3.4036"
  sha256 :no_check

  url "https://cdn.binary.ninja/installers/BinaryNinja-demo.dmg"
  name "Binary Ninja"
  desc "Reverse engineering platform"
  homepage "https://binary.ninja/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Binary Ninja.app"

  zap trash: "~/Library/Application Support/Binary Ninja"
end
