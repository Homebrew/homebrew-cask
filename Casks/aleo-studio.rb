cask "aleo-studio" do
  version "0.14.0"
  sha256 "4a1b2cc81c873fa9c10b7bc19b7b92493f4c317ccd2c518b42a34bb99684fe61"

  url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/latest/Aleo%20Studio-#{version}.pkg",
      verified: "aleo-studio-releases.sfo2.digitaloceanspaces.com/"
  name "Aleo Studio"
  desc "IDE for zero-knowledge proofs"
  homepage "https://aleo.studio/"

  livecheck do
    url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  pkg "Aleo Studio-#{version}.pkg"

  uninstall pkgutil: "com.studio.aleo"
end
