cask "aleo-studio" do
  version "0.10.3"
  sha256 "c8334ff79d042de199d7c7a3ec6c2404210887d7b1ef9440990419acd27cd758"

  url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/#{version}/Aleo%20Studio-#{version}.pkg",
      verified: "aleo-studio-releases.sfo2.digitaloceanspaces.com/"
  name "Aleo Studio"
  desc "IDE for zero-knowledge proofs"
  homepage "https://aleo.studio/"

  depends_on macos: ">= :high_sierra"

  pkg "Aleo Studio-#{version}.pkg"

  uninstall pkgutil: "com.studio.aleo"
end
