cask "aleo-studio" do
  version "0.10.3"
  sha256 "c8334ff79d042de199d7c7a3ec6c2404210887d7b1ef9440990419acd27cd758"

  # aleo-studio-releases.sfo2.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/#{version}/Aleo%20Studio-#{version}.pkg"
  name "Aleo Studio"
  desc "World's First IDE for Zero-Knowledge Proofs"
  homepage "https://aleo.studio/"

  depends_on macos: ">= :high_sierra"

  pkg "Aleo Studio-0.10.3.pkg"

  uninstall pkgutil: [
    "com.studio.aleo",
  ]
end
