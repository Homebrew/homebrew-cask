cask "aleo-studio" do
  version "0.13.0"
  sha256 "9e42587f18a773e0033f1da8915fcdda52b0f8b68be676e0c517594c5b7ee194"

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
